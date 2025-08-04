import 'dart:async';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'data.dart';
import 'question_banks.dart';
import 'mode_selection_screen.dart';

class QuizScreen extends StatefulWidget {
  final String topicName;
  final int? startQuestionIndex;
  final bool isSubscriptionValid;
  const QuizScreen({
    super.key,
    required this.topicName,
    this.startQuestionIndex,
    required this.isSubscriptionValid,
  });
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

final Map<String, List<Map<String, dynamic>>> shuffledQuestionsPerTopic = {};
final Map<String, int> topicScores = {};

class _QuizScreenState extends State<QuizScreen> {
  final Random random = Random();

  List<Map<String, dynamic>> currentQuestions = [];
  int currentQuestionIndex = 0;

  // Ads
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;

  bool _isBannerAdReady = false;
  bool _isInterstitialAdReady = false;
  bool autoSkipCorrect = false;
  int _adFailureCount = 0;
  static const int _adFailureLimit = 5;

  // Overlay flags
  bool _hasInternet = true;
  bool _showAdBlockOverlay = false;

  int _answerTapCount = 0;

  Timer? _interstitialRetryTimer;
  // Note: No immediate interstitial timer in initState to avoid hangs

  // Colors and topics (keep as is)
  final Color primaryColor = Color(0xFF207EE8);
  final Color secondaryColor = Colors.lightBlue;
  final Color correctColor = Colors.green;
  final Color incorrectColor = Colors.red;
  final Color tertiaryColor = Colors.blueAccent;

  static const List<String> allTopics = [
    'Sets and Intervals',
    'Functions',
    'Limits and Continuity',
    'Derivatives',
    'Applications of Derivatives',
    'Intro to Integration',
  ];

  int get score => topicScores[widget.topicName] ?? 0;
  set score(int newScore) => topicScores[widget.topicName] = newScore;

  @override
  void initState() {
    super.initState();

    // Always check internet first (async, no blocking)
    _checkInternetConnection();

    if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS)) {
      MobileAds.instance.initialize().then((InitializationStatus status) {
        _loadBannerAd();
        _loadInterstitialAd();
      }).catchError((error) {
        debugPrint('MobileAds init error: $error');
      });
    }

    if (!shuffledQuestionsPerTopic.containsKey(widget.topicName)) {
      final fullList = (questionBanks[widget.topicName] ?? [])
          .map((q) => Map<String, dynamic>.from(q))
          .toList();
      fullList.shuffle(random);
      final selected = fullList.length > 5 ? fullList.sublist(0, 5) : fullList;
      shuffledQuestionsPerTopic[widget.topicName] = selected;
    }
    currentQuestions = shuffledQuestionsPerTopic[widget.topicName]!;

    if (widget.startQuestionIndex != null &&
        widget.startQuestionIndex! < currentQuestions.length) {
      currentQuestionIndex = widget.startQuestionIndex!;
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    _interstitialRetryTimer?.cancel();
    super.dispose();
  }

  Future<void> _checkInternetConnection() async {
    if (widget.isSubscriptionValid || !(Platform.isAndroid || Platform.isIOS)) {
      setState(() {
        _hasInternet = true;
        _updateAdBlockOverlay();
      });
      return;
    }

    bool hasConnection = false;
    try {
      final response =
      await http.get(Uri.parse("https://www.google.com")).timeout(const Duration(seconds: 5));
      hasConnection = response.statusCode == 200;
    } catch (_) {
      hasConnection = false;
    }

    if (!mounted) return;

    setState(() {
      _hasInternet = hasConnection;
      _updateAdBlockOverlay();
    });
  }
  Timer? _sevenMinTimer;
  void _startSevenMinTimer() {
    _sevenMinTimer?.cancel(); // cancel existing if any
    _sevenMinTimer = Timer(const Duration(minutes: 7), () {
      // Action after 7 minutes, e.g. refresh ads or unlock something
      // You can customize what happens here
      setState(() {
        // Example: reload ads or reset flags
        _loadInterstitialAd();
        _loadBannerAd();
      });
    });
  }

  void _updateAdBlockOverlay() {
    if (widget.isSubscriptionValid) {
      _showAdBlockOverlay = false;
    } else {
      _showAdBlockOverlay = !_hasInternet || (_adFailureCount >= _adFailureLimit);
    }
    // Safe to call setState here as callers already do setState after this
  }

  void _loadBannerAd() {
    _bannerAd?.dispose();
    _isBannerAdReady = false;
    if (widget.isSubscriptionValid) return;

    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-1183105543219757/9343157418',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isBannerAdReady = true;
            _adFailureCount = 0;
            _showAdBlockOverlay = false;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          setState(() {
            _isBannerAdReady = false;
            _adFailureCount++;
            _updateAdBlockOverlay();
          });
        },
      ),
    )..load();
  }

  void _loadInterstitialAd() {
    _interstitialAd?.dispose();
    _isInterstitialAdReady = false;
    if (widget.isSubscriptionValid || !(Platform.isAndroid || Platform.isIOS)) return;

    InterstitialAd.load(
      adUnitId: 'ca-app-pub-1183105543219757/3244652925',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
          _isInterstitialAdReady = true;
          _showAdBlockOverlay = false;

          _interstitialAd!.setImmersiveMode(true);
          _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _loadInterstitialAd();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              _loadInterstitialAd();
            },
          );
          if (mounted) setState(() {});
        },
        onAdFailedToLoad: (LoadAdError error) {
          _isInterstitialAdReady = false;
          _adFailureCount++;
          _updateAdBlockOverlay();

          // Retry after delay to avoid rapid failures
          _interstitialRetryTimer?.cancel();
          _interstitialRetryTimer = Timer(const Duration(seconds: 10), () {
            if (mounted) _loadInterstitialAd();
          });

          if (mounted) setState(() {});
        },
      ),
    );
  }

  void handleAnswer(int selectedIndex) {
    if (currentQuestions.isEmpty) return;
    final question = currentQuestions[currentQuestionIndex];
    if (question.containsKey('selectedIndex')) return;

    final correctIndex = question['correct'];
    final isCorrect = selectedIndex == correctIndex;

    setState(() {
      currentQuestions[currentQuestionIndex]['selectedIndex'] = selectedIndex;

      if (isCorrect) {
        score += 4;
        PracticeData.saveAnswer(widget.topicName, true, DateTime.now());
        // Auto-skip logic (optional)
      } else {
        score -= 1;
        PracticeData.saveAnswer(widget.topicName, false, DateTime.now());
        showBottomExplanation();
      }

      _answerTapCount++;
      if (!widget.isSubscriptionValid && (_answerTapCount % 10) == 0 && (Platform.isAndroid || Platform.isIOS)) {
        if (_isInterstitialAdReady) {
          _interstitialAd?.show();
          _loadInterstitialAd();
        }
      }
    });
  }

  void showBottomExplanation() {
    final explanation = currentQuestions[currentQuestionIndex]['explanation'] ?? '';
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        bool showWhy = false;
        return StatefulBuilder(
          builder: (context, setModalState) => Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Incorrect Answer",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: incorrectColor,
                  ),
                ),
                const SizedBox(height: 12),
                if (showWhy)
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explanation",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        buildRichMathText(explanation, align: TextAlign.left),
                      ],
                    ),
                  )
                else
                  const Text(
                    "Would you like to see why this is wrong?",
                    style: TextStyle(fontSize: 18),
                  ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                      child: const Text("Continue", style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () => setModalState(() => showWhy = !showWhy),
                      style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                      child: Text(
                        showWhy ? "Hide" : "Why?",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showExplanationPersistent() {
    final explanation = currentQuestions[currentQuestionIndex]['explanation'] ?? '';
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explanation",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 8),
              buildRichMathText(explanation, align: TextAlign.left),
            ],
          ),
        ),
      ),
    );
  }

  void nextQuestion() {
    if (currentQuestionIndex < currentQuestions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  void goToNextTopic() {
    int currentIndex = allTopics.indexOf(widget.topicName);
    if (currentIndex < allTopics.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicName: allTopics[currentIndex + 1],
            isSubscriptionValid: widget.isSubscriptionValid,
          ),
        ),
      );
    } else {
      final int finalScore = topicScores.values.fold(0, (sum, val) => sum + val);
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Quiz Completed"),
          content: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350),
            child: Text("Total Score: $finalScore"),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK")),
          ],
        ),
      );
    }
  }

  void goToPreviousTopic() {
    int currentIndex = allTopics.indexOf(widget.topicName);
    if (currentIndex > 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            topicName: allTopics[currentIndex - 1],
            isSubscriptionValid: widget.isSubscriptionValid,
          ),
        ),
      );
    }
  }

  void showScoreCalculation() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Score Calculation"),
        content: const Text(
            "Correct Answer: +4 points\nWrong Answer: -1 point\nUnanswered: 0 points\n\nYour current score is shown live below the question."),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK")),
        ],
      ),
    );
  }

  Future<void> quitQuiz() async {
    if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS) && _isInterstitialAdReady) {
      await _interstitialAd?.show();
      _loadInterstitialAd();
      _startSevenMinTimer();
    }

    for (var q in currentQuestions) {
      if (q.containsKey('selectedIndex')) {
        final isCorrect = q['selectedIndex'] == q['correct'];
        PracticeData.saveAnswer(widget.topicName, isCorrect, DateTime.now());
      }
    }
    final int finalScore = topicScores.values.fold(0, (sum, val) => sum + val);
    if (!mounted) return;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Quit Quiz"),
        content: Text(
            "Your final cumulative score is $finalScore points.\nDo you want to finish and reset your progress?"),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
          TextButton(
            onPressed: () {
              shuffledQuestionsPerTopic.clear();
              topicScores.clear();
              currentQuestionIndex = 0;
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModeSelectionScreen(isSubscriptionValid: widget.isSubscriptionValid),
                ),
              );
            },
            child: const Text("Finish"),
          ),
        ],
      ),
    );
  }

  List<InlineSpan> parseTextWithMath(String input) {
    final RegExp regex = RegExp(r'\\\((.+?)\\\)');
    List<InlineSpan> spans = [];
    int lastIndex = 0;
    for (final match in regex.allMatches(input)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(
            text: input.substring(lastIndex, match.start),
            style: const TextStyle(color: Colors.black87)));
      }
      spans.add(WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        child: Math.tex(
          match.group(1)!,
          mathStyle: MathStyle.text,
          textStyle: const TextStyle(fontSize: 20, color: Colors.black87),
        ),
      ));
      lastIndex = match.end;
    }
    if (lastIndex < input.length) {
      spans.add(TextSpan(
          text: input.substring(lastIndex), style: const TextStyle(color: Colors.black87)));
    }
    return spans;
  }

  Widget buildRichMathText(String rawText, {TextAlign align = TextAlign.center}) {
    final text = rawText.replaceAll(r'\n', '\n');
    final lines = text.split('\n');
    List<InlineSpan> children = [];
    for (int i = 0; i < lines.length; i++) {
      children.addAll(parseTextWithMath(lines[i]));
      if (i != lines.length - 1) {
        children.add(const TextSpan(text: '\n'));
      }
    }
    return RichText(
      textAlign: align,
      text: TextSpan(
        style: const TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w600),
        children: children,
      ),
      softWrap: true,
    );
  }

  Widget buildOption(int index, String optionText) {
    final selectedIndex = currentQuestions[currentQuestionIndex]['selectedIndex'];
    final correctIndex = currentQuestions[currentQuestionIndex]['correct'];
    bool isSelected = selectedIndex == index;
    bool isCorrectSelected = isSelected && selectedIndex == correctIndex;
    bool isWrongSelected = isSelected && selectedIndex != correctIndex;

    Color borderColor = primaryColor;
    Color fillColor = Colors.white;

    if (selectedIndex != null) {
      if (isCorrectSelected) {
        fillColor = correctColor.withOpacity(0.15);
        borderColor = correctColor;
      } else if (isWrongSelected) {
        fillColor = incorrectColor.withOpacity(0.15);
        borderColor = incorrectColor;
      } else if (index == correctIndex) {
        fillColor = correctColor.withOpacity(0.1);
        borderColor = correctColor;
      } else {
        borderColor = Colors.grey.shade400;
      }
    }

    return SizedBox(
      height: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: fillColor,
          side: BorderSide(color: borderColor, width: 1.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: selectedIndex == null ? () => handleAnswer(index) : null,
        child: Center(child: buildRichMathText(optionText)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestions.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final String questionText = currentQuestions[currentQuestionIndex]['question'];
    final List<String> options =
    List<String>.from(currentQuestions[currentQuestionIndex]['options']);
    final selectedIndex = currentQuestions[currentQuestionIndex]['selectedIndex'];

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(widget.topicName),
            backgroundColor: primaryColor,
            iconTheme: const IconThemeData(color: Colors.white),
            titleTextStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            actions: [
              Tooltip(
                message: "Automatically go to next question if answer is correct",
                child: Row(
                  children: [
                    const Text("Auto Skip", style: TextStyle(color: Colors.white)),
                    Switch(
                      value: autoSkipCorrect,
                      onChanged: (val) => setState(() => autoSkipCorrect = val),
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.grey[400],
                      inactiveTrackColor: Colors.grey[700],
                    ),
                  ],
                ),
              ),
              IconButton(
                tooltip: "Add 5 more shuffled questions",
                icon: const Icon(Icons.shuffle),
                onPressed: () async {
                  if (!widget.isSubscriptionValid) {
                    if ((Platform.isAndroid || Platform.isIOS) && _isInterstitialAdReady) {
                      await _interstitialAd?.show();
                      _loadInterstitialAd();
                      _startSevenMinTimer();
                    }
                  }

                  final fullList = (questionBanks[widget.topicName] ?? [])
                      .map((q) => Map<String, dynamic>.from(q))
                      .toList();
                  fullList.shuffle(random);

                  int currentLength = currentQuestions.length;
                  int nextCount = 5;

                  if (currentLength + nextCount > fullList.length) {
                    nextCount = fullList.length - currentLength;
                  }

                  if (nextCount > 0) {
                    final nextQuestions = fullList.sublist(currentLength, currentLength + nextCount);
                    setState(() {
                      currentQuestions.addAll(nextQuestions);
                      shuffledQuestionsPerTopic[widget.topicName] = currentQuestions;
                      currentQuestionIndex = currentLength;
                    });
                  }
                },
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Question ${currentQuestionIndex + 1} of ${currentQuestions.length}',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Score: $score',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      buildRichMathText(questionText, align: TextAlign.left),
                      const SizedBox(height: 24),
                      Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 320),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: options.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 1.5,
                            ),
                            itemBuilder: (context, index) => buildOption(index, options[index]),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: currentQuestionIndex > 0 ? previousQuestion : null,
                            style: ElevatedButton.styleFrom(backgroundColor: tertiaryColor),
                            child: const Text("Back", style: TextStyle(color: Colors.white)),
                          ),
                          ElevatedButton(
                            onPressed: currentQuestionIndex < currentQuestions.length - 1
                                ? nextQuestion
                                : goToNextTopic,
                            style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                            child: Text(
                              currentQuestionIndex < currentQuestions.length - 1
                                  ? "Next"
                                  : "Next Topic",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          PopupMenuButton<String>(
                            icon: const Icon(Icons.more_vert_outlined),
                            onSelected: (value) {
                              switch (value) {
                                case 'previous_topic':
                                  goToPreviousTopic();
                                  break;
                                case 'next_topic':
                                  goToNextTopic();
                                  break;
                                case 'quit_quiz':
                                  quitQuiz();
                                  break;
                                case 'score_calc':
                                  showScoreCalculation();
                                  break;
                              }
                            },
                            itemBuilder: (context) => [
                              const PopupMenuItem(value: 'previous_topic', child: Text('Previous Topic')),
                              const PopupMenuItem(value: 'next_topic', child: Text('Next Topic')),
                              const PopupMenuItem(value: 'quit_quiz', child: Text('Quit Quiz')),
                              const PopupMenuItem(value: 'score_calc', child: Text('Score Calculation')),
                            ],
                          ),
                        ],
                      ),
                      if (selectedIndex != null) ...[
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: showExplanationPersistent,
                          style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                          child: const Text("Show Explanation", style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS))
                SizedBox(
                  height: _bannerAd?.size.height.toDouble() ?? 50,
                  width: _bannerAd?.size.width.toDouble() ?? double.infinity,
                  child: _bannerAd != null ? AdWidget(ad: _bannerAd!) : const SizedBox.shrink(),
                )
              else
                const SizedBox.shrink(),
            ],
          ),
        ),
        if (_showAdBlockOverlay)
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.95),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.wifi_off_rounded,
                        size: 64,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "No internet connection. Please turn on internet ads help keep the app free for everyone.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _adFailureCount = 0;
                            _showAdBlockOverlay = false;
                          });
                          _loadBannerAd();
                          _loadInterstitialAd();
                          _startSevenMinTimer();
                        },
                        child: const Text("Retry"),
                      ),
                      const SizedBox(height: 12),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ModeSelectionScreen(
                                      isSubscriptionValid:
                                      widget
                                          .isSubscriptionValid),
                            ),
                                (route) => false,
                          );
                        },
                        child: const Text("Close"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}