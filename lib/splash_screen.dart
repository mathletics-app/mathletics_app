import 'dart:io' show Platform;
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'dart:convert';
import 'package:lottie/lottie.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:ntp/ntp.dart';
import 'package:crypto/crypto.dart';
import 'data.dart';
import 'data2.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<bool> isReallyOnline() async {
    try {
      final response = await http
          .get(Uri.parse("https://www.google.com"))
          .timeout(const Duration(seconds: 5));
      return response.statusCode == 200;
    } catch (_) {
      return false;
    }
  }

  String generateHmac(String expiry, String userId, String secretKey) {
    final input = '$expiry|$userId';
    final key = utf8.encode(secretKey);
    final bytes = utf8.encode(input);
    final hmacSha256 = Hmac(sha256, key);
    final digest = hmacSha256.convert(bytes);
    return digest.toString();
  }

  Future<void> requestTrackingPermission() async {
    if (Platform.isIOS) {
      final status = await AppTrackingTransparency.trackingAuthorizationStatus;
      if (status == TrackingStatus.notDetermined) {
        final result = await AppTrackingTransparency.requestTrackingAuthorization();
        print("ATT permission status: $result");
      }
    }
  }

  Future<bool> _validatePremium() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final user = FirebaseAuth.instance.currentUser;
      DateTime now;

      try {
        now = await NTP.now();
      } catch (e) {
        now = DateTime.now();
        print("⚠️ NTP failed, using device time: $e");
      }

      final isOnline = user != null && await isReallyOnline();
      DateTime? expiry;
      bool isPremium = false;

      if (isOnline) {
        try {
          final doc = await FirebaseFirestore.instance.collection('users').doc(user!.uid).get();
          final data = doc.data();

          final active = data?['subscriptionActive'] == true;
          final serverExpiry = (data?['subscriptionExpiry'] as Timestamp?)?.toDate();

          if (active && serverExpiry != null && now.isBefore(serverExpiry)) {
            isPremium = true;
            expiry = serverExpiry;
          }

          if (serverExpiry != null && user != null) {
            final expiryStr = serverExpiry.toIso8601String();
            final hmac = generateHmac(expiryStr, user.uid, 'abc123@mathleticsKey');

            await prefs.setString('subscriptionExpiry', expiryStr);
            await prefs.setString('expiryHmac', hmac);
          }
        } catch (e) {
          print("⚠️ Online Firestore fetch failed: $e");
        }
      }

      final expiryStr = prefs.getString('subscriptionExpiry');
      final expiryHmac = prefs.getString('expiryHmac');
      final expectedHmac = (expiryStr != null && user != null)
          ? generateHmac(expiryStr, user.uid, 'abc123@mathleticsKey')
          : null;

      final cachedExpiry = DateTime.tryParse(expiryStr ?? '');

      if (cachedExpiry != null &&
          now.isBefore(cachedExpiry) &&
          expiryHmac != null &&
          expiryHmac == expectedHmac) {
        isPremium = true;
        expiry = cachedExpiry;
      } else {
        print("⚠️ Local subscription data failed HMAC validation or expired.");
      }

      return isPremium;
    } catch (e) {
      print('⚠️ Premium validation error: $e');
      return false;
    }
  }

  Future<void> _initialize() async {
    final stopwatch = Stopwatch()..start();

    // --- Your existing initialization logic ---
    try {
      if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
        await Firebase.initializeApp();
        print("Firebase initialized successfully");
      }
    } catch (e) {
      print("Firebase initialization failed: $e");
    }

    await Hive.initFlutter();

    try {
      await PracticeData.init();
      await PracticeData2.init();
      print("✅ PracticeData and PracticeData2 initialized");
    } catch (e) {
      print("⚠️ PracticeData initialization failed: $e");
    }

    final isPremium = await _validatePremium();

    if (!isPremium && !kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      try {
        await MobileAds.instance.initialize();
        print("Mobile Ads initialized for FREE user");
        if (Platform.isIOS) {
          await requestTrackingPermission();
        }
      } catch (e) {
        print("Mobile Ads initialization failed: $e");
      }

    stopwatch.stop();
    final elapsedMs = stopwatch.elapsedMilliseconds;
    const minDurationMs = 6000;

    if (elapsedMs < minDurationMs) {
      // Wait remaining time to make total 6 seconds
      await Future.delayed(Duration(milliseconds: minDurationMs - elapsedMs));
    }

    setState(() {
      _loading = false;
    });

    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (_) => MainMenuScreen(isSubscriptionValid: isPremium),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: LottieLoader(),
        ),
      ),
    );
  }
}

class LottieLoader extends StatelessWidget {
  const LottieLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lottie/dynamic.json',
      width: 200,
      height: 200,
      repeat: true,
      fit: BoxFit.contain,
    );
  }
}
