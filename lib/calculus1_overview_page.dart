import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'mode_selection_screen.dart';

class Calculus1OverviewPage extends StatefulWidget {
  /// `true`  → premium (no ads)
  /// `false` → free (show ads)
  final bool isSubscriptionValid;

  const Calculus1OverviewPage({
    super.key,
    required this.isSubscriptionValid,
  });

  @override
  State<Calculus1OverviewPage> createState() => _Calculus1OverviewPageState();
}

class _Calculus1OverviewPageState extends State<Calculus1OverviewPage> {
  InterstitialAd? _interstitialAd;
  bool _isInterstitialAdReady = false;

  @override
  void initState() {
    super.initState();
    if (!widget.isSubscriptionValid) {
      _loadInterstitialAd();
    }
  }

  /* ---------------- Ads ---------------- */

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-1183105543219757/3244652925', // replace with your own
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          setState(() => _isInterstitialAdReady = true);
        },
        onAdFailedToLoad: (error) {
          setState(() => _isInterstitialAdReady = false);
        },
      ),
    );
  }

  void _showAdThenContinue() {
    if (widget.isSubscriptionValid) {
      _navigateToNext();
      return;
    }

    if (_isInterstitialAdReady && _interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _loadInterstitialAd(); // pre‑load next ad
          _navigateToNext();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _loadInterstitialAd();
          _navigateToNext();
        },
      );
      _interstitialAd!.show();
      _interstitialAd = null;
      _isInterstitialAdReady = false;
    } else {
      _navigateToNext();
    }
  }

  /* ---------------- Navigation ---------------- */

  void _navigateToNext() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ModeSelectionScreen(
          topicName: 'Limits',
          isSubscriptionValid: widget.isSubscriptionValid,
        ),
      ),
    );
  }

  /* ---------------- UI ---------------- */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Calculus I Overview',
          style: TextStyle(
            color: Color(0xFF1361BA),
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF1361BA)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Calculus I focuses on understanding the behavior of functions, '
                  'the concept of limits, and how to compute and apply derivatives. '
                  'It forms the foundation for higher‑level mathematics and many '
                  'real‑world applications in science, engineering, and economics. '
                  "Here's what you'll be expected to know:",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Calculus I Topics',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1361BA),
              ),
            ),
            const SizedBox(height: 16),

            /* ---------- Topics & Sub‑topics ---------- */

            const Text('1. Sets and Intervals'),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: _buildSubTopic('Numbers, Inequalities'),
            ),

            const SizedBox(height: 16),
            const Text('2. Functions'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Representing Functions'),
                  _buildSubTopic('Power Functions, Polynomials, Rational Functions'),
                  _buildSubTopic('Exponential Functions'),
                  _buildSubTopic('Radian Measure and Trig Functions'),
                  _buildSubTopic('New Functions from Old (transformations and translations)'),
                  _buildSubTopic('Inverse Functions, Logs, and Inverse Trig Functions'),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const Text('3. Limits and Continuity'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('The Limit of a Function'),
                  _buildSubTopic('Calculating Limits Using the Limit Laws and Continuity'),
                  _buildSubTopic('Limits Involving Infinity'),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const Text('4. Derivatives'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Derivatives and Rates of Change'),
                  _buildSubTopic('The Derivative as a Function'),
                  _buildSubTopic('Differentiation Formulas'),
                  _buildSubTopic('Derivatives of Trigonometric, Exponential, and Log Functions'),
                  _buildSubTopic('The Chain Rule, Implicit Differentiation'),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const Text('5. Applications of Derivatives'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Sketching of graphs (local and absolute extrema)'),
                  _buildSubTopic('Newton\'s Method'),
                  _buildSubTopic('Optimization and Related Rates'),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const Text('6. Introduction to Integration'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Riemann Sum'),
                  _buildSubTopic('Fundamental Theorem of Calculus'),
                  _buildSubTopic('Substitution Rule'),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Center(
              child: Text(
                'NO CALCULATORS ARE ALLOWED',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 30),

            /* ---------- Continue Button ---------- */

            Center(
              child: SizedBox(
                width: 200,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF1361BA),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: _showAdThenContinue,
                  child: Text(
                    widget.isSubscriptionValid
                        ? 'CONTINUE'
                        : 'CONTINUE',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            if (widget.isSubscriptionValid)
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Center(
                  child: Text(
                    '⭐ You have Premium Access',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1361BA),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /* ---------------- Helpers ---------------- */

  Widget _buildSubTopic(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6, right: 8),
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Color(0xFF1361BA),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
