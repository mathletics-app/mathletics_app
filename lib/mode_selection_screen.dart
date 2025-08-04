import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'quiz_screen.dart';
import 'study_screen.dart';
import 'main.dart';
import 'premium_screen.dart';
import 'practice_stats_screen.dart';

class ModeSelectionScreen extends StatefulWidget {
  final String? topicName;
  final bool isSubscriptionValid;

  const ModeSelectionScreen({
    super.key,
    this.topicName,
    required this.isSubscriptionValid,
  });

  @override
  State<ModeSelectionScreen> createState() => _ModeSelectionScreenState();
}

class _ModeSelectionScreenState extends State<ModeSelectionScreen> {
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  Timer? _interstitialTimer;

  @override
  void initState() {
    super.initState();

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
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) => setState(() {}),
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          _bannerAd = null;
        },
      ),
    )..load();
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-1183105543219757/3244652925',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
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
        },
        onAdFailedToLoad: (error) {
          _interstitialAd = null;
        },
      ),
    );
  }

  void _showInterstitialAd() {
    if (widget.isSubscriptionValid) return;
    if (_interstitialAd != null) {
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
      // Navigate to PracticeStatsScreen2
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PracticeStatsScreen()),
      );
    } else {
      // Show premium popup dialog (same as mode_selection_screen2)
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                  MaterialPageRoute(builder: (context) => const PremiumScreen()),
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
    const blue = Color(0xFF1361BA);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Select Mode',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        backgroundColor: blue,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
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
                            QuizScreen(
                              topicName: 'Sets and Intervals',
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
                            StudyScreen(isSubscriptionValid: widget.isSubscriptionValid),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // View Stats button styled in blue (same style as other cards)
                _buildBlueStatsCard(context, onTap: _onViewStatsPressed),

                const SizedBox(height: 20),

                // Premium card with golden gradient and white text/icons
                _buildPremiumCard(context),
              ],
            ),
          ),

          if ((Platform.isAndroid || Platform.isIOS) && !widget.isSubscriptionValid)
            if (_bannerAd != null)
              Container(
                alignment: Alignment.center,
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
        ],
      ),
    );
  }

  Widget _buildModeCard(BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
    Color iconColor = const Color(0xFF1361BA),
    Color titleColor = const Color(0xFF1361BA),
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

  Widget _buildBlueStatsCard(BuildContext context, {required VoidCallback onTap}) {
    const blue = Color(0xFF1361BA);

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
              const Icon(Icons.bar_chart, size: 40, color: blue),
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
                        color: Color(0xFF1361BA),
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
                  ? const Icon(Icons.lock_open, color: Color(0xFF1361BA))
                  : const Icon(Icons.lock_outline, color: Color(0xFF1361BA)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPremiumCard(BuildContext context) {
    return Container(
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
            MaterialPageRoute(builder: (context) => const PremiumScreen()),
          );
        },
        iconColor: Colors.white,
        titleColor: Colors.white,
        descriptionColor: Colors.white70,
        cardColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
