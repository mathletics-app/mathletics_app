import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_register.dart';

const Color gold = Color(0xFFFFD700);
const Color darkGold = Color(0xFFB8860B);
const Color backgroundTop = Color(0xFFFFF9E5);
const Color backgroundBottom = Color(0xFFFFF1B5);

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  User? user;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid || Platform.isIOS) {
      user = FirebaseAuth.instance.currentUser;
    }
  }

  void _handleContinue() {
    if (!(Platform.isAndroid || Platform.isIOS)) return;

    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginRegisterScreen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginRegisterScreen()),
      ).then((_) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      });
    }
  }

  Future<void> _logout() async {
    if (!(Platform.isAndroid || Platform.isIOS)) return;

    await FirebaseAuth.instance.signOut();
    setState(() {
      user = null;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Logged out')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final benefits = [
      'All ads are blocked',
      'Add questions without watching ads',
      'Use app fully offline',
      'View detailed stats anytime',
      'Use Premium on up to 2 devices',
      'Access to both Calculus 1 & 2 Premium',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Membership'),
        centerTitle: true,
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
        actions: [
          if (user != null)
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: _logout,
              color: Colors.black,
            )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [backgroundTop, backgroundBottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enjoy full access with Premium',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: darkGold,
              ),
            ),
            const SizedBox(height: 16),
            ...benefits.map(
                  (benefit) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle_rounded, color: darkGold, size: 20),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        benefit,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [gold, darkGold],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.star, color: Colors.white),
            label: Text(
              user != null ? 'Continue to Payment' : 'Login / Register to Subscribe',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              foregroundColor: Colors.white,
            ),
            onPressed: _handleContinue,
          ),
        ),
      ),
    );
  }
}
