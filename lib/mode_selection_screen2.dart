import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'quiz_screen2.dart';
import 'study_screen2.dart';
import 'practice_stats_screen2.dart';
import 'main.dart';
import 'premium_screen.dart';


class ModeSelectionScreen2 extends StatefulWidget {
  final String? topicName;
  final bool isSubscriptionValid;

  const ModeSelectionScreen2({
    super.key,
    this.topicName,
    required this.isSubscriptionValid,
  });

  @override
  State<ModeSelectionScreen2> createState() => _ModeSelectionScreen2State();
}

class _ModeSelectionScreen2State extends State<ModeSelectionScreen2> {
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  Timer? _interstitialTimer;

  @override
  void initState() {
    super.initState();

    // Only load ads if not premium and on mobile
    if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS)) {
      _loadBannerAd();
      _loadInterstitialAd();
      _interstitialTimer = Timer.periodic(const Duration(minutes: 5), (timer) {
        _showInterstitialAd();
      });
    }
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-1183105543219757/9343157418',
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) => setState(() {}),
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          ad.dispose();
        },
      ),
    )
      ..load();
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-1183105543219757/3244652925',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _interstitialAd?.setImmersiveMode(true);
        },
        onAdFailedToLoad: (err) {
          debugPrint('InterstitialAd failed to load: $err');
          _interstitialAd = null;
        },
      ),
    );
  }

  void _showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _loadInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad, err) {
          debugPrint('Failed to show interstitial ad: $err');
          ad.dispose();
          _loadInterstitialAd();
        },
      );

      _interstitialAd!.show();
      _interstitialAd = null;
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    _interstitialTimer?.cancel();
    super.dispose();
  }

  void _onViewStatsPressed() {
    if (widget.isSubscriptionValid) {
      // Navigate to practice_stats_screen.dart
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PracticeStatsScreen2()),
      );
    } else {
      // Show premium popup
      showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Row(
                children: const [
                  Icon(Icons.workspace_premium, color: Colors.amber),
                  SizedBox(width: 8),
                  Text('Premium Feature'),
                ],
              ),
              content: const SingleChildScrollView(
                child: Text(
                  'Unlock Powerful Practice Insights with Premium!\n\n'
                      'With premium membership, you get exclusive access to your personal Practice Stats:\n\n'
                      '• Track your daily progress, see how many questions you solve each day and which topics you focus on.\n'
                      '• Dive deep with accuracy charts comparing your performance per topic against others.\n'
                      '• Visualize your strengths and identify areas to sharpen before exams with easy to understand charts.\n'
                      '• Plus, reset your stats anytime to start fresh and track your improvement from scratch!\n\n'
                      'Upgrade now and turn your practice into smart progress the edge you need to master your course and ace your exams!',
                  style: TextStyle(fontSize: 15, height: 1.3),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Maybe Later'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PremiumScreen()),
                    );
                  },
                  child: const Text('Upgrade Now'),
                ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Select Mode',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        backgroundColor: Color(0xFF008080),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Color(0xFFf5f7f6)),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => MainMenuScreen(
                    isSubscriptionValid: widget.isSubscriptionValid,
                  ),
                ),
                    (route) => false,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                if (widget.isSubscriptionValid)
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '⭐ Premium features enabled — enjoy an ad-free experience!',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                _buildModeCard(
                  context,
                  icon: Icons.quiz_outlined,
                  title: 'Quiz Mode',
                  description: 'Practice 5 random questions per topic to sharpen your skills.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            QuizScreen2(
                              topicName: 'FTC part 1 & 2',
                              isSubscriptionValid: widget.isSubscriptionValid,
                            ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildModeCard(
                  context,
                  icon: Icons.menu_book_outlined,
                  title: 'Study Mode',
                  description: 'Review solved examples and key concepts at your own pace.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            StudyScreen2(isSubscriptionValid: widget
                                .isSubscriptionValid),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // === NEW "View Stats" Gradient Button Card ===
                _buildGradientStatsCard(
                  context,
                  onTap: _onViewStatsPressed,
                ),

                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFD700), Color(0xFFB8860B)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xFFB8860B),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.withOpacity(0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: _buildModeCard(
                    context,
                    icon: Icons.workspace_premium,
                    title: 'Premium Membership',
                    description: 'Unlock all features and remove ads',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PremiumScreen()),
                      );
                    },
                    iconColor: Colors.white,
                    titleColor: Colors.white,
                    descriptionColor: Colors.white70,
                    cardColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
          if ((Platform.isAndroid || Platform.isIOS) &&
              !widget.isSubscriptionValid)
            if (_bannerAd != null)
              Container(
                color: Colors.grey[200],
                height: _bannerAd!.size.height.toDouble(),
                width: _bannerAd!.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              )
            else
              const SizedBox.shrink()
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _buildModeCard(BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
    Color iconColor = const Color(0xFF008080),
    Color titleColor = const Color(0xFF008080),
    Color descriptionColor = Colors.black87,
    Color cardColor = Colors.white,
    double elevation = 6,
  }) {
    return Card(
      color: cardColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(icon, size: 40, color: iconColor),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: titleColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(fontSize: 14, color: descriptionColor),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: iconColor),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradientStatsCard(BuildContext context,
      {required VoidCallback onTap}) {
    const Color modeColor = Color(0xFF008080);

    return Card(
      color: Colors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Icon(Icons.bar_chart, size: 40, color: Color(0xFF008080)),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'View Stats',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF008080),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Track daily practice, monitor accuracy per topic, and discover your strengths.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              widget.isSubscriptionValid
                  ? const Icon(Icons.lock_open, color: Color(0xFF008080))
                  : const Icon(Icons.lock_outline, color: Color(0xFF008080)),
            ],
          ),
        ),
      ),
    );
  }
}
