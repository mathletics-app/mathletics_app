import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'study_questions2.dart';

class StudyScreen2 extends StatefulWidget {
  final bool isSubscriptionValid;

  const StudyScreen2({super.key, required this.isSubscriptionValid});

  @override
  State<StudyScreen2> createState() => _StudyScreen2State();
}

class _StudyScreen2State extends State<StudyScreen2> {
  final Map<String, Set<int>> shownExplanations = {};
  // Ad unit IDs
  static const bannerAdUnitId = 'ca-app-pub-1183105543219757/9343157418';
  static const interstitialAdUnitId = 'ca-app-pub-1183105543219757/3244652925';
  static const rewardedAdUnitId = 'ca-app-pub-1183105543219757/9482758214';

  final Map<String, List<Map<String, String>>> topics = studyQuestions2;
  final Map<String, bool> topicExpanded = {};
  final Map<String, Set<int>> expandedSimilarQuestions = {};

  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;
  Timer? _twelveMinTimer;

  int _adFailureCount = 0;
  bool _showAdBlockOverlay = false;
  bool _noInternet = false;

  String? _pendingRewardTopic;
  int? _pendingRewardIndex;

  @override
  void initState() {
    super.initState();

    for (var topic in topics.keys) {
      topicExpanded[topic] = false;
      expandedSimilarQuestions[topic] = {};
      shownExplanations[topic] = {}; //
    }

    _checkAndInitializeAds();
  }

  Future<void> _checkAndInitializeAds() async {
    if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS)) {
      final hasInternet = await _hasInternetConnection();
      if (!hasInternet) {
        setState(() {
          _noInternet = true;
        });
        return;
      }
      setState(() {
        _noInternet = false;
      });
      MobileAds.instance.initialize();
      _loadBannerAd();
      _loadInterstitialAd();
      _loadRewardedAd();
      _startTwelveMinTimer();
    }
  }

  Future<bool> _hasInternetConnection() async {
    try {
      final result = await HttpClient()
          .getUrl(Uri.parse("https://www.google.com"))
          .timeout(const Duration(seconds: 5));
      await result.close();
      return true;
    } catch (_) {
      return false;
    }
  }

  void _startTwelveMinTimer() {
    _twelveMinTimer?.cancel();
    _loadInterstitialAd(); // Pre-load the first ad immediately
    _twelveMinTimer = Timer.periodic(const Duration(minutes: 12), (timer) {
      if (_interstitialAd != null) {
        _interstitialAd!.show();
        _loadInterstitialAd(); // Pre-load the next one
      }
    });
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          _handleAdFailure();
        },
        onAdLoaded: (ad) {
          setState(() {});
          _resetAdFailures();
        },
      ),
    )..load();
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _resetAdFailures();
          _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _loadInterstitialAd();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              _handleAdFailure();
              _loadInterstitialAd();
            },
          );
        },
        onAdFailedToLoad: (error) {
          _handleAdFailure();
        },
      ),
    );
  }

  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          _rewardedAd = ad;
          _resetAdFailures();
        },
        onAdFailedToLoad: (error) {
          _rewardedAd = null;
          _handleAdFailure();
        },
      ),
    );
  }

  void _handleAdFailure() {
    if (widget.isSubscriptionValid) return;
    _adFailureCount++;
    if (_adFailureCount >= 5) {
      setState(() {
        _showAdBlockOverlay = true;
      });
    }
  }

  void _resetAdFailures() {
    _adFailureCount = 0;
    if (_showAdBlockOverlay) {
      setState(() {
        _showAdBlockOverlay = false;
      });
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
    _twelveMinTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text("Study Mode"),
            backgroundColor: const Color(0xFF27AE95),
            iconTheme: const IconThemeData(color: Colors.white),
            titleTextStyle: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  children: topics.entries.map((entry) {
                    final topic = entry.key;
                    final questions = entry.value;

                    final List<Widget> questionWidgets = [];

                    for (int i = 0; i < questions.length; i += 3) {
                      questionWidgets.add(_buildQuestionCard(topic, questions, i));

                      // Show 2 similar questions when unlocked
                      if (expandedSimilarQuestions[topic]!.contains(i)) {
                        final similarToShow = 2; // Show exactly 2 similar questions
                        for (int j = 1; j <= similarToShow; j++) {
                          if (i + j < questions.length) {
                            questionWidgets.add(
                                _buildQuestionCard(topic, questions, i + j, isSimilar: true));
                          }
                        }
                      }
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(topic,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            topicExpanded[topic]!
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: const Color(0xFF27AE95),
                          ),
                          onTap: () {
                            setState(() {
                              topicExpanded[topic] = !topicExpanded[topic]!;
                              if (!topicExpanded[topic]!) {
                                expandedSimilarQuestions[topic]!.clear();
                              }
                            });
                          },
                        ),
                        if (topicExpanded[topic]!) ...questionWidgets,
                      ],
                    );
                  }).toList(),
                ),
              ),
              if (_bannerAd != null && !widget.isSubscriptionValid)
                SizedBox(
                  height: _bannerAd!.size.height.toDouble(),
                  width: _bannerAd!.size.width.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
                ),
            ],
          ),
        ),

        // No Internet Overlay
        if (_noInternet && !widget.isSubscriptionValid)
          _buildNoInternetOverlay(),

        // Ad Block Overlay
        if (_showAdBlockOverlay && !widget.isSubscriptionValid)
          _buildAdBlockOverlay(),
      ],
    );
  }

  Widget _buildNoInternetOverlay() {
    return Positioned.fill(
      child: Container(
        color: Colors.white.withOpacity(0.95),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.wifi_off_rounded, size: 64, color: Colors.redAccent),
                const SizedBox(height: 16),
                const Text(
                  "No internet connection. Please turn on internet ads help keep the app free for everyone.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => _checkAndInitializeAds(),
                  child: const Text("Retry"),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Close"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAdBlockOverlay() {
    return Positioned.fill(
      child: Container(
        color: Colors.white.withOpacity(0.95),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.warning_amber_rounded,
                    size: 64, color: Colors.orangeAccent),
                const SizedBox(height: 16),
                const Text(
                  "No internet connection. Please turn on internet ads help keep the app free for everyone.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _adFailureCount = 0;
                      _showAdBlockOverlay = false;
                    });
                    _checkAndInitializeAds();
                  },
                  child: const Text("Retry"),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Close"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCard(String topic, List<Map<String, String>> questions,
      int index, {
        bool isSimilar = false,
      }) {
    final qna = questions[index];

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: isSimilar ? 4 : 10, horizontal: isSimilar ? 16 : 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSimilar ? Colors.purple.shade50 : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: isSimilar
            ? Border.all(color: Colors.purple.shade200, width: 1.2)
            : null,
        boxShadow: isSimilar
            ? []
            : [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isSimilar)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: const [
                  Icon(Icons.tips_and_updates, color: Colors.purple),
                  SizedBox(width: 8),
                  Text("🧠 Similar Practice",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.purple)),
                ],
              ),
            ),
          ...qna['question']!
              .split(r'\n')
              .map((line) => Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: _renderMixedLine(line.trim()),
          )),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () => setState(() {
              if (shownExplanations[topic]!.contains(index)) {
                // Collapsing explanation, so also collapse similar questions for this main question
                shownExplanations[topic]!.remove(index);
                expandedSimilarQuestions[topic]!.remove(index);  // <--- collapse similar questions too
              } else {
                // Expanding explanation, just add
                shownExplanations[topic]!.add(index);
              }
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  shownExplanations[topic]!.contains(index)
                      ? "Hide Explanation"
                      : "Show Explanation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade600),
                ),
                Icon(
                  shownExplanations[topic]!.contains(index)
                      ? Icons.expand_less
                      : Icons.expand_more,
                  color: Colors.green.shade600,
                ),
              ],
            ),
          ),
          if (shownExplanations[topic]!.contains(index) && qna['answer'] != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: qna['answer']!
                    .split(r'\n')
                    .map((line) => Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: _renderMixedLine(line.trim()),
                ))
                    .toList(),
              ),
            ),
          if (!isSimilar)
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () async {
                  if (widget.isSubscriptionValid) {
                    setState(() {
                      expandedSimilarQuestions[topic]!.add(index);
                    });
                  } else {
                    if (!await _hasInternetConnection()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text(
                                "Please connect to the internet to unlock similar questions.")),
                      );
                      return;
                    }

                    _pendingRewardTopic = topic;
                    _pendingRewardIndex = index;

                    if (_rewardedAd != null) {
                      _rewardedAd!.fullScreenContentCallback =
                          FullScreenContentCallback(
                            onAdDismissedFullScreenContent: (ad) {
                              ad.dispose();
                              _loadRewardedAd();
                            },
                            onAdFailedToShowFullScreenContent: (ad, error) {
                              ad.dispose();
                              _handleAdFailure();
                              _loadRewardedAd();
                            },
                          );

                      _rewardedAd!.show(
                        onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
                          setState(() {
                            expandedSimilarQuestions[_pendingRewardTopic!]!
                                .add(_pendingRewardIndex!);
                          });
                          _resetAdFailures();
                        },
                      );
                      _rewardedAd = null;
                    } else {
                      if (_adFailureCount < 5) {
                        // Grace period - still unlock questions
                        setState(() {
                          expandedSimilarQuestions[topic]!.add(index);
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Ad not available. Please try again later.")),
                        );
                      }
                      _loadRewardedAd();
                    }
                  }
                },
                icon: const Icon(Icons.card_giftcard, color: Colors.purple),
                label: const Text("Try Similar",
                    style: TextStyle(color: Colors.purple)),
              ),
            ),
        ],
      ),
    );
  }

  Widget _renderMixedLine(String line) {
    final regex = RegExp(r'(\\\(.*?\\\))');
    final parts = <InlineSpan>[];
    final matches = regex.allMatches(line);
    int lastEnd = 0;

    for (final match in matches) {
      if (match.start > lastEnd) {
        parts.add(TextSpan(
          text: line.substring(lastEnd, match.start),
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ));
      }
      final texExpr = match.group(0)!;
      final texInner = texExpr.substring(2, texExpr.length - 2);
      parts.add(WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        child: Math.tex(
          texInner,
          textStyle: const TextStyle(fontSize: 16),
        ),
      ));
      lastEnd = match.end;
    }

    if (lastEnd < line.length) {
      parts.add(TextSpan(
        text: line.substring(lastEnd),
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ));
    }

    return RichText(text: TextSpan(children: parts));
  }
}