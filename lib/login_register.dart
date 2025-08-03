// login_screen.dart
import 'package:http/http.dart' as http;
import 'dart:async';
import 'splash_screen.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class LoginRegisterScreen extends StatefulWidget {
  const LoginRegisterScreen({super.key});

  @override
  State<LoginRegisterScreen> createState() => _LoginRegisterScreenState();
}

class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLogin = true;
  bool _loading = false;
  bool _checkingPremium = false;
  String? _premiumStatusMessage;
  Color? _premiumStatusColor;
  String? _deviceId;

  @override
  void initState() {
    super.initState();
    _initDeviceId();
  }

  Future<void> _initDeviceId() async {
    try {
      final deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        _deviceId = (await deviceInfo.androidInfo).id;
      } else if (Platform.isIOS) {
        _deviceId = (await deviceInfo.iosInfo).identifierForVendor;
      }
    } catch (e) {
      _showMessage('Error retrieving device ID');
    }
    setState(() {});
  }

  Future<void> _submit() async {
    if (_deviceId == null || !_formKey.currentState!.validate()) return;

    setState(() => _loading = true);

    try {
      final email = _emailController.text.trim().toLowerCase();
      final password = _passwordController.text.trim();
      UserCredential userCredential;

      if (_isLogin) {
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email, password: password);
      }

      final user = userCredential.user;
      if (user == null) throw FirebaseAuthException(code: 'auth-failed');

      final docRef = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final docSnap = await docRef.get();

      if (_isLogin) {
        if (!docSnap.exists) {
          _showMessage('User data missing.');
          return;
        }

        final data = docSnap.data()!;
        final isPremium = data['subscriptionActive'] == true;
        final expiry = (data['subscriptionExpiry'] as Timestamp?)?.toDate();
        final List devices = data['devices'] ?? [];

        if (!isPremium || expiry == null || DateTime.now().isAfter(expiry)) {
          await FirebaseAuth.instance.signOut();
          _showMessage('Subscription inactive or expired.');
          return;
        }

        if (!devices.contains(_deviceId)) {
          if (devices.length >= 2) {
            await FirebaseAuth.instance.signOut();
            _showMessage('Device limit reached.');
            return;
          }
          devices.add(_deviceId);
          await docRef.update({'devices': devices});
        }

        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isPremium', true);
        await prefs.setString('premiumExpiry', expiry.toIso8601String());



        _showMessage('Login successful!');
        if (mounted) Navigator.pop(context);
      } else {
        if (docSnap.exists) {
          _showMessage('Account already exists.');
          return;
        }

        await docRef.set({
          'email': email,
          'subscriptionActive': false,
          'subscriptionExpiry': null,
          'devices': [],
        });

        DateTime now = DateTime.now();
        try {
          final response = await http.get(Uri.parse("https://www.google.com")).timeout(const Duration(seconds: 5));
          if (response.statusCode == 200) {
            now = DateTime.now().toUtc(); // trust server-aligned time
          }
        } catch (_) {
          // offline fallback, use local time
        }

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('lastVerifiedTime', now.toIso8601String());

        _showMessage('Registration successful!');
        if (mounted) Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      final msg = switch (e.code) {
        'email-already-in-use' => 'Email already registered.',
        'user-not-found' => 'User not found.',
        'wrong-password' => 'Incorrect password.',
        'invalid-email' => 'Invalid email address.',
        'network-request-failed' => 'Unable to reach server, check your internet connection.',
        _ => 'Auth error: ${e.code}',
      };
      _showMessage(msg);
    } catch (e) {
      _showMessage('Unexpected error: ${e.toString()}');
    } finally {
      setState(() => _loading = false);
    }
  }

  Future<void> _refreshPremiumStatus() async {
    setState(() {
      _checkingPremium = true;
      _premiumStatusMessage = null;
    });

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      setState(() {
        _premiumStatusMessage = 'Please log in first.';
        _premiumStatusColor = Colors.redAccent;
        _checkingPremium = false;
      });
      return;
    }

    try {
      final doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      final data = doc.data();

      if (data == null) throw Exception('User data missing');

      final isPremium = data['subscriptionActive'] == true;
      final expiry = (data['subscriptionExpiry'] as Timestamp?)?.toDate();

      if (isPremium && expiry != null && DateTime.now().isBefore(expiry)) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isPremium', true);
        await prefs.setString('premiumExpiry', expiry.toIso8601String());

        setState(() {
          _premiumStatusMessage = '🎉 You are a premium user!';
          _premiumStatusColor = const Color(0xFFFFD700);
        });
      } else {
        setState(() {
          _premiumStatusMessage = 'You are not a premium user.';
          _premiumStatusColor = Colors.redAccent;
        });
      }
    } catch (e) {
      setState(() {
        _premiumStatusMessage = 'Error: ${e.toString()}';
        _premiumStatusColor = Colors.redAccent;
      });
    } finally {
      setState(() => _checkingPremium = false);
    }
  }

  Future<void> _logout() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && _deviceId != null) {
      final ref = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final snap = await ref.get();
      final data = snap.data();
      final List devices = data?['devices'] ?? [];
      devices.remove(_deviceId);
      await ref.update({'devices': devices});
    }
    await FirebaseAuth.instance.signOut();
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    _showMessage('Signed out successfully.');
  }

  Future<void> _launchPayment() async {
    final remoteConfig = FirebaseRemoteConfig.instance;

    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(hours: 6), // Always fetch fresh config
    ));

    await remoteConfig.fetchAndActivate();

    final paystackLink = remoteConfig.getString('paystack_link');
    const placeholder = 'https://example.com/not-ready';

    if (paystackLink.isEmpty || paystackLink == placeholder) {
      // Show golden popup
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xFFFFD700), // Your gold color
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('Coming Soon', style: TextStyle(fontWeight: FontWeight.bold)),
          content: const Text('This feature is not available yet. Please check back later.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      );
    } else {
      final uri = Uri.tryParse(paystackLink);
      if (uri != null && await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        _showMessage('Could not open payment link.');
      }
    }
  }

  void _showMessage(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const gold = Color(0xFFFFD700);
    const darkGold = Color(0xFFB8860B);

    return Scaffold(
      appBar: AppBar(
        title: Text(_isLogin ? 'Login' : 'Register'),
        actions: _isLogin ? [IconButton(icon: const Icon(Icons.logout), onPressed: _logout)] : null,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [gold, darkGold],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: _inputStyle('Email', Icons.email, gold, darkGold),
                validator: (v) => v == null || !v.contains('@') ? 'Enter a valid email' : null,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: _inputStyle('Password (6+ chars)', Icons.lock, gold, darkGold),
                validator: (v) => v == null || v.length < 6 ? 'Password too short' : null,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _loading ? null : _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: gold,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                child: _loading
                    ? const CircularProgressIndicator(color: Colors.black)
                    : Text(_isLogin ? 'Login' : 'Register'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => setState(() => _isLogin = !_isLogin),
                child: Text(
                  _isLogin ? "Don't have an account? Register" : 'Already have an account? Login',
                  style: TextStyle(color: darkGold, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: _launchPayment,
                icon: const Icon(Icons.payment),
                label: const Text('Pay R89 - Mathletics Premium'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkGold,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: _checkingPremium
                    ? null
                    : () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const SplashScreen()),
                  );
                },
                icon: _checkingPremium
                    ? const CircularProgressIndicator(strokeWidth: 2)
                    : const Icon(Icons.refresh),
                label: const Text('Refresh Premium Status'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: gold,
                  foregroundColor: Colors.black,
                ),
              ),
              if (_premiumStatusMessage != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      _premiumStatusMessage!,
                      style: TextStyle(
                        color: _premiumStatusColor ?? Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputStyle(String label, IconData icon, Color borderColor, Color iconColor) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: iconColor),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
