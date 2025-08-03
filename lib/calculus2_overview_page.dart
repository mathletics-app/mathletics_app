import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'mode_selection_screen2.dart';

class Calculus2OverviewPage extends StatefulWidget {
  final bool isSubscriptionValid;

  const Calculus2OverviewPage({super.key, required this.isSubscriptionValid});

  @override
  State<Calculus2OverviewPage> createState() => _Calculus2OverviewPageState();
}

class _Calculus2OverviewPageState extends State<Calculus2OverviewPage> {
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    super.initState();

    if (!widget.isSubscriptionValid && (Platform.isAndroid || Platform.isIOS)) {
      MobileAds.instance.initialize();
      _loadInterstitialAd();
    }
  }

  void _loadInterstitialAd() {
    if (!(Platform.isAndroid || Platform.isIOS)) return;

    InterstitialAd.load(
      adUnitId: 'ca-app-pub-1183105543219757/9883037877',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (error) {
          _interstitialAd = null;
        },
      ),
    );
  }

  void _showAdThenNavigate() {
    if (widget.isSubscriptionValid) {
      _navigateToModeSelection();
      return;
    }

    if (!(Platform.isAndroid || Platform.isIOS)) {
      _navigateToModeSelection();
      return;
    }

    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _loadInterstitialAd();
          _navigateToModeSelection();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _navigateToModeSelection();
        },
      );
      _interstitialAd!.show();
      _interstitialAd = null;
    } else {
      _navigateToModeSelection();
    }
  }

  void _navigateToModeSelection() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ModeSelectionScreen2(
          topicName: 'Integration',
          isSubscriptionValid: widget.isSubscriptionValid,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF008080),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Calculus II Overview',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Calculus 2 builds on the foundations of derivatives by diving deeper into integration, '
                  'applications of the definite integral, and advanced mathematical tools like sequences, '
                  'series, and differential equations. Goodluck!!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Calculus 2 Topics',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF008080),
              ),
            ),
            const SizedBox(height: 16),
            const Text('1. Integration'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('The Fundamental Theorem of Calculus'),
                  _buildSubSubTopic('Part 1: Link between antiderivatives and definite integrals'),
                  _buildSubSubTopic('Part 2: Using antiderivatives to evaluate definite integrals'),
                  _buildSubTopic('Techniques of Integration'),
                  _buildSubSubTopic('Substitution'),
                  _buildSubSubTopic('Integration by Parts'),
                  _buildSubSubTopic('Trigonometric Integrals'),
                  _buildSubSubTopic('Trigonometric Substitution'),
                  _buildSubSubTopic('Partial Fractions'),
                  _buildSubSubTopic('Improper Integrals'),
                  _buildSubTopic('Applications of Integration'),
                  _buildSubSubTopic('Area Between Curves'),
                  _buildSubSubTopic('Volumes of Solids'),
                  _buildSubSubTopic('Arc Length'),
                  _buildSubSubTopic('Average Value of a Function'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('2. Binomial Theorem and Sequences & Series'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Binomial Expansions and Combinatorics'),
                  _buildSubTopic('Maclaurin and Taylor Polynomials'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('3. Complex Numbers'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Arithmetic, Geometry, and Polar Form'),
                  _buildSubTopic('De Moivre\'s Theorem and Roots of Complex Numbers'),
                  _buildSubTopic('Complex Exponentials and Trigonometric Forms'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('4. Differential Equations'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Basic Concepts and Models'),
                  _buildSubTopic('Separable and Linear First Order Equations'),
                  _buildSubTopic('Euler\'s Method'),
                  _buildSubTopic('Population Growth Models'),
                  _buildSubTopic('Second Order Differential Equations'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('5. Vectors'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('3D Space and Vector Operations'),
                  _buildSubTopic('Dot and Cross Products'),
                  _buildSubTopic('Lines and Planes'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('6. Matrices'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubTopic('Solving Linear Systems (Gaussian Elimination)'),
                  _buildSubTopic('Matrix Operations and Inverses'),
                  _buildSubTopic('Determinants and Transformations'),
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
            Center(
              child: SizedBox(
                width: 200,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF008080),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: _showAdThenNavigate,
                  child: Text(
                    widget.isSubscriptionValid ? 'CONTINUE' : 'CONTINUE',
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
                      color: Color(0xFF008080),
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

  static Widget _buildSubTopic(String text) {
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
              color: Color(0xFF008080),
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

  static Widget _buildSubSubTopic(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6, right: 8),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: const Color(0xFF008080),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
