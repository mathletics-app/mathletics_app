import 'dart:io' show Platform;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'device_utils.dart';

class PremiumStatus {
  final bool isPremium;
  final DateTime? expiryDate;

  PremiumStatus({required this.isPremium, required this.expiryDate});
}

Future<PremiumStatus> checkPremiumAndDeviceLimit() async {
  try {
    return await _checkLogic().timeout(
      const Duration(seconds: 7),
      onTimeout: () {
        print("⚠️ Timeout hit - assuming non-premium.");
        return PremiumStatus(isPremium: false, expiryDate: null);
      },
    );
  } catch (e, stack) {
    print("⚠️ checkPremiumAndDeviceLimit error: $e");
    print(stack);
    return PremiumStatus(isPremium: false, expiryDate: null);
  }
}

Future<PremiumStatus> _checkLogic() async {
  if (!(Platform.isAndroid || Platform.isIOS)) {
    // Desktop or web (for testing)
    return PremiumStatus(isPremium: true, expiryDate: null);
  }

  final user = FirebaseAuth.instance.currentUser;
  if (user == null || user.email == null) return PremiumStatus(isPremium: false, expiryDate: null);

  final userEmail = user.email!;
  final userDocRef = FirebaseFirestore.instance.collection('users').doc(userEmail);
  final docSnapshot = await userDocRef.get();

  final deviceId = await getDeviceId();

  if (!docSnapshot.exists) {
    await userDocRef.set({
      'subscriptionActive': false,
      'subscriptionExpiry': null,
      'devices': [deviceId],
    });
    return PremiumStatus(isPremium: false, expiryDate: null);
  }

  final data = docSnapshot.data();
  if (data == null) return PremiumStatus(isPremium: false, expiryDate: null);

  final isPremium = data['subscriptionActive'] == true;
  final expiryString = data['subscriptionExpiry'];
  final devices = List<String>.from(data['devices'] ?? []);

  if (expiryString is String) {
    try {
      final expiryDate = DateTime.parse(expiryString);
      if (DateTime.now().isAfter(expiryDate)) {
        print("🔒 Subscription expired on $expiryString");
        return PremiumStatus(isPremium: false, expiryDate: expiryDate);
      }

      if (devices.contains(deviceId)) {
        return PremiumStatus(isPremium: isPremium, expiryDate: expiryDate);
      }

      if (devices.length < 2) {
        devices.add(deviceId);
        await userDocRef.update({'devices': devices});
        return PremiumStatus(isPremium: isPremium, expiryDate: expiryDate);
      }

      print("🚫 Device limit exceeded for $userEmail");
      return PremiumStatus(isPremium: false, expiryDate: expiryDate);
    } catch (e) {
      print("⚠️ Invalid expiry date format: $expiryString");
      return PremiumStatus(isPremium: false, expiryDate: null);
    }
  }

  return PremiumStatus(isPremium: false, expiryDate: null);
}
