import 'package:flutter/material.dart';
import 'calculus1_overview_page.dart';
import 'calculus2_overview_page.dart';
import 'splash_screen.dart'; // Assuming you have this in a separate file

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),  // SplashScreen does subscription check & navigation
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class MainMenuScreen extends StatelessWidget {
  final bool isSubscriptionValid;

  const MainMenuScreen({super.key, required this.isSubscriptionValid});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF1361BA)),  // make menu icon blue, your previous code had white which hides it on white bg
        title: const Text('', style: TextStyle(color: Color(0xFF1361BA))),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, size: 30, color: Color(0xFF1361BA)),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                isSubscriptionValid ? 'Premium' : 'Standard',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF1361BA),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1361BA)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Main Menu'),
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MainMenuScreen(isSubscriptionValid: isSubscriptionValid),
                ),
              ),
            ),
            ExpansionTile(
              leading: const Icon(Icons.book),
              title: const Text('Courses'),
              children: [
                ListTile(
                  title: const Text('Calculus I'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calculus1OverviewPage(
                          isSubscriptionValid: isSubscriptionValid,
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Calculus II'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calculus2OverviewPage(
                          isSubscriptionValid: isSubscriptionValid,
                        ),
                      )
                    );
                  },
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About Us'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: const RoundedRectangleBorder(),
                    title: const Text('About Mathletics'),
                    content: const SingleChildScrollView(
                      child: Text(
                        'Mathletics is built with one goal in mind:\n'
                            'To help university students succeed in mathematics courses like Calculus and beyond.\n\n'
                            'We believe that everyone can enjoy and excel in mathematics when guided properly.\n'
                            'That journey starts with being active, solving as many problems as possible,\n'
                            'and learning from clear, friendly explanations.\n\n'
                            'This app is here to support that mission, one problem at a time.\n\n'
                            'Brought to you by Leboneng Qhena,\nA student at the University of Cape Town, studying Mathematics and Computer Science.\n\n'
                            'Thank you for your love and support!',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail_outlined),
              title: const Text('Contact Us'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: const RoundedRectangleBorder(),
                    title: const Text('Contact Us'),
                    content: const Text(
                      'If you have any enquiries about the app,\n'
                          'noticed a bug, or just want to send us your opinions.\n'
                          'We’d love to hear from you!\n\n'
                          'Email us at: mathleticscare@gmail.com',
                      style: TextStyle(fontSize: 14),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: const Text('Terms & Policies'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: const RoundedRectangleBorder(),
                    title: const Text('Terms & Policies'),
                    content: const SingleChildScrollView(
                      child: Text(
                        '© 2025 Mathletics | All Rights Reserved.\n\n'
                            'This application is protected under international copyright and intellectual property laws.\n\n'
                            'Any unauthorized reproduction, distribution, or modification of any part of this app is strictly prohibited.\n\n'
                            'All content in the app is provided for educational purposes only.\n'
                            'While we aim for accuracy, we cannot guarantee that all materials are free of errors.\n\n'
                            'Mathletics and its developers will not be held liable for any academic consequences,\n'
                            'misunderstandings, or damages resulting from the use of this app.\n\n'
                            'By using Mathletics, you agree to use it responsibly and in accordance\n'
                            'with your school or institution’s academic integrity policies.\n\n'
                            'For questions or concerns, please email us at: mathleticscare@gmail.com',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Transform.translate(
          offset: const Offset(0, -60), // Move up by 60 pixels
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
                width: 90,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset('assets/icon/main.png'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Mathletics',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1361BA),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Master University Mathematics',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF1361BA),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '"Practice isn\'t the thing you do once you\'re good. It\'s the thing you do that makes you good." – Malcolm Gladwell',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF1361BA),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: 220,
                height: 75,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF1361BA),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  ),
                  onPressed: () => _navigateToCourseSelection(context),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'START PRACTICE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: false,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  void _navigateToCourseSelection(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (_, __, ___) => CourseSelectionScreen(isSubscriptionValid: isSubscriptionValid),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}

class CourseSelectionScreen extends StatelessWidget {
  final bool isSubscriptionValid;
  const CourseSelectionScreen({super.key, required this.isSubscriptionValid});

  Widget _buildMathSymbolIcon(String symbol, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        shape: BoxShape.circle,
      ),
      child: Text(
        symbol,
        style: TextStyle(
          fontSize: 26,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        title: const Text(
          'Select Course',
          style: TextStyle(
            color: Color(0xFF1361BA),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Color(0xFF1361BA)),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        children: [
          _buildCourseCard(
            context,
            'Calculus I',
            _buildMathSymbolIcon('π', const Color(0xFF1361BA)),
            const Color(0xFF1361BA),
          ),
          const SizedBox(height: 16),
          _buildCourseCard(
            context,
            'Calculus II',
            _buildMathSymbolIcon('∫', const Color(0xFF004C4C)),
            const Color(0xFF004C4C),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(
      BuildContext context,
      String title,
      Widget icon,
      Color color,
      ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      color: Colors.white,
      shadowColor: Colors.black12,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          if (title == 'Calculus I') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Calculus1OverviewPage(
                  isSubscriptionValid: isSubscriptionValid,
                ),
              ),
            );
          } else if (title == 'Calculus II') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Calculus2OverviewPage(
                  isSubscriptionValid: isSubscriptionValid,
                ),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: icon,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.grey[600], size: 18),
            ],
          ),
        ),
      ),
    );
  }
}
