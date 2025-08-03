import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io' show Platform;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mathletics_v2/data2.dart';

import 'question_banks2.dart';
import 'mode_selection_screen2.dart';
import 'data.dart';

class QuizScreen2 extends StatefulWidget {
  final String topicName;
  final int? startQuestionIndex;
  final bool isSubscriptionValid;

  const QuizScreen2({
    super.key,
    required this.topicName,
    this.startQuestionIndex,
    required this.isSubscriptionValid,
  });

  @override
  State<QuizScreen2> createState() => _QuizScreenState();
}

final Map<String, List<Map<String, dynamic>>> shuffledQuestionsPerTopic = {};
final Map<String, int> topicScores = {}; // tracks score per topic

class _QuizScreenState extends State<QuizScreen2> {
  bool _hasInternet = true;
  bool _adsLoaded = false;
  int _adFailureCount = 0;
  final int _adFailureLimit = 5;
  final Random random = Random();
  List<Map<String, dynamic>> currentQuestions = [];
  int currentQuestionIndex = 0;

  int get score => topicScores[widget.topicName] ?? 0;
  set score(int newScore) => topicScores[widget.topicName] = newScore;

  static const List<String> allTopics = [
    'FTC part 1 & 2',
    'Techniques of Integration',
    'Applications of Integration',
    'Binomial Theorem',
    'Complex Numbers',
    'Differential Equations',
    'Vectors',
    'Matrices & MVF',
  ];

  final Color primaryColor = const Color(0xFF27AE95);
  final Color secondaryColor = const Color(0xFF157C69);
  final Color tertiaryColor = const Color(0xFF006688);
  final Color correctColor = Colors.green;
  final Color incorrectColor = Colors.red;

  bool autoSkipCorrect = false;

  // Ad variables
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  bool _isBannerAdReady = false;
  bool _isInterstitialAdReady = false;

  Timer? _interstitialTimer;
  int _answerTapCount = 0;

  // Controls no internet overlay
  bool _showAdBlockOverlay = false;

  @override
  void initState() {
    super.initState();
    checkInternetConnection();

    // Initialize MobileAds only on Android/iOS for free users
    if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS)) {
      MobileAds.instance.initialize().then((InitializationStatus status) {
        _loadBannerAd();
        _loadInterstitialAd();
      });
    }

    if (!shuffledQuestionsPerTopic.containsKey(widget.topicName)) {
      final fullList = (questionBanks2[widget.topicName] ?? [])
          .map((q) => Map<String, dynamic>.from(q))
          .toList();
      fullList.shuffle(random);
      final initialQuestions =
      fullList.length > 5 ? fullList.sublist(0, 5) : fullList;
      shuffledQuestionsPerTopic[widget.topicName] = initialQuestions;
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
    _interstitialTimer?.cancel();
    super.dispose();
  }

  void _loadBannerAd() {
    if (widget.isSubscriptionValid) return;
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-1183105543219757/2196119549',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          _adsLoaded = false;
          _adFailureCount++;
          _updateBlockScreen();
        },
        onAdLoaded: (_) {
          _adsLoaded = true;
          _adFailureCount = 0; // Reset on success
          _updateBlockScreen();
        },
      ),
    )..load();
  }

  void _loadInterstitialAd() {
    if (widget.isSubscriptionValid || !(Platform.isAndroid || Platform.isIOS)) return;

    InterstitialAd.load(
      adUnitId: 'ca-app-pub-1183105543219757/9883037877',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
          _isInterstitialAdReady = true;
          _showAdBlockOverlay = false;
          // Set full screen content callback to reload after shown
          _interstitialAd!.setImmersiveMode(true);
          _interstitialAd!.fullScreenContentCallback =
              FullScreenContentCallback(
                onAdDismissedFullScreenContent: (ad) {
                  ad.dispose();
                  _loadInterstitialAd();
                },
                onAdFailedToShowFullScreenContent: (ad, error) {
                  ad.dispose();
                  _loadInterstitialAd();
                },
              );
        },
        onAdFailedToLoad: (LoadAdError error) {
          _isInterstitialAdReady = false;
          _showAdBlockOverlay = true;
          // Retry loading after delay
          Future.delayed(const Duration(seconds: 10), () {
            if (mounted) _loadInterstitialAd();
          });
        },
      ),
    );
  }

  Future<void> checkInternetConnection() async {
    // Only check internet for free users
    if (widget.isSubscriptionValid || !(Platform.isAndroid || Platform.isIOS)) return;

    bool hasConnection = false;
    try {
      final response = await http.get(Uri.parse("https://www.google.com"))
          .timeout(const Duration(seconds: 5));
      hasConnection = response.statusCode == 200;
    } catch (_) {
      hasConnection = false;
    }

    setState(() {
      _hasInternet = hasConnection;
    });
    _updateBlockScreen();
  }

  void _updateBlockScreen() {
    if (widget.isSubscriptionValid) {
      _showAdBlockOverlay = false;
    } else {
      _showAdBlockOverlay = !_hasInternet || _adFailureCount >= _adFailureLimit;
    }
    setState(() {});
  }

  void _retryLoadAds() {
    setState(() {
      _showAdBlockOverlay = false;
    });
    if (Platform.isAndroid || Platform.isIOS) {
      if (!_isBannerAdReady) _loadBannerAd();
      if (!_isInterstitialAdReady) _loadInterstitialAd();
    }
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
        score = score + 4;
        PracticeData2.saveAnswer(widget.topicName, true, DateTime.now());
        if (autoSkipCorrect) {
          if (currentQuestionIndex < currentQuestions.length - 1) {
            currentQuestionIndex++;
          } else {
            goToNextTopic();
          }
        }
      } else {
        score = score - 1;
        PracticeData2.saveAnswer(widget.topicName, false, DateTime.now());
        showBottomExplanation();
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
          builder: (context, setState) => Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Incorrect Answer",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: incorrectColor)),
                const SizedBox(height: 12),
                if (showWhy)
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Explanation",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: primaryColor)),
                        const SizedBox(height: 8),
                        buildRichMathText(explanation, align: TextAlign.left),
                      ],
                    ),
                  )
                else
                  const Text("Would you like to see why this is wrong?",
                      style: TextStyle(fontSize: 18)),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: primaryColor),
                      child: const Text("Continue",
                          style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () => setState(() => showWhy = !showWhy),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                      child: Text(showWhy ? "Hide" : "Why?",
                          style: const TextStyle(color: Colors.white)),
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
              Text("Explanation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: primaryColor)),
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

  void shuffleQuestions() {
    // Show interstitial ad for free users when shuffling
    if (!widget.isSubscriptionValid) {
      _showInterstitialAd();
    }

    final fullList = (questionBanks2[widget.topicName] ?? [])
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
        currentQuestionIndex = currentLength; // Jump to new questions start
      });
    }
  }

  void goToNextTopic() {
    int currentIndex = allTopics.indexOf(widget.topicName);
    if (currentIndex < allTopics.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen2(
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
          builder: (_) => QuizScreen2(
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

  void quitQuiz() {
    // Show interstitial ad for free users when quitting
    if (!widget.isSubscriptionValid) {
      _showInterstitialAd();
    }

    for (var q in currentQuestions) {
      if (q.containsKey('selectedIndex')) {
        final isCorrect = q['selectedIndex'] == q['correct'];
        PracticeData.saveAnswer(widget.topicName, isCorrect, DateTime.now());
      }
    }
    final int finalScore = topicScores.values.fold(0, (sum, val) => sum + val);
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
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => ModeSelectionScreen2(isSubscriptionValid: widget.isSubscriptionValid)),
                    (route) => false,
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
        child: Math.tex(match.group(1)!,
            mathStyle: MathStyle.text,
            textStyle: const TextStyle(fontSize: 20, color: Colors.black87)),
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
          style: const TextStyle(
              fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w600),
          children: children),
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: selectedIndex == null ? () => handleAnswer(index) : null,
        child: Center(child: buildRichMathText(optionText)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestions.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
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
                icon: const Icon(Icons.shuffle),
                tooltip: "Add 5 more shuffled questions",
                onPressed: shuffleQuestions,
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
                            style:
                            const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Score: $score',
                            style:
                            const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                            itemBuilder: (context, index) =>
                                buildOption(index, options[index]),
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
                              const PopupMenuItem(
                                  value: 'previous_topic', child: Text('Previous Topic')),
                              const PopupMenuItem(
                                  value: 'next_topic', child: Text('Next Topic')),
                              const PopupMenuItem(value: 'quit_quiz', child: Text('Quit Quiz')),
                              const PopupMenuItem(
                                  value: 'score_calc', child: Text('Score Calculation')),
                            ],
                          ),
                        ],
                      ),
                      if (selectedIndex != null) ...[
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: showExplanationPersistent,
                          style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                          child: const Text("Show Explanation",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              // Banner ad container at bottom - only for free users
              if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS))
                if (_isBannerAdReady)
                  SizedBox(
                    height: _bannerAd!.size.height.toDouble(),
                    width: _bannerAd!.size.width.toDouble(),
                    child: AdWidget(ad: _bannerAd!),
                  )
                else
                  const SizedBox(height: 50)
              else
                const SizedBox.shrink(),
            ],
          ),
        ),
        // No internet overlay when ad load fails - only for free users
        if (!widget.isSubscriptionValid && _showAdBlockOverlay)
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
                                  ModeSelectionScreen2(
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

  Future<void> _showInterstitialAd() async {
    if (!(Platform.isAndroid || Platform.isIOS)) return;

    if (_isInterstitialAdReady && _interstitialAd != null) {
      try {
        await _interstitialAd!.show();
        _isInterstitialAdReady = false; // Will be reloaded in callback
      } catch (e) {
        // ignore errors showing ad
      }
    }
  }
}