import 'package:ecardio/widgets/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PhoneNumberVerificationCheck extends StatefulWidget {
  const PhoneNumberVerificationCheck({super.key});

  @override
  PhoneNumberVerificationCheckState createState() =>
      PhoneNumberVerificationCheckState();
}

class PhoneNumberVerificationCheckState extends State {
  bool _isPhoneNumberVerified = false;

  @override
  void initState() {
    super.initState();
    _checkPhoneNumberVerificationStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _isPhoneNumberVerified
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              : const Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
          const SizedBox(width: 8),
          Text(
            _isPhoneNumberVerified
                ? 'Phone number is verified: ${FirebaseAuth.instance.currentUser!.phoneNumber}'
                : 'Phone number is not verified',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _isPhoneNumberVerified ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _checkPhoneNumberVerificationStatus() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Check if any provider is linked
      print('user ==> $user');
      for (UserInfo userInfo in user.providerData) {
        if (userInfo.providerId == 'phone') {
          setState(() {
            _isPhoneNumberVerified = true;
          });
          return;
        }
      }
    }
    setState(() {
      _isPhoneNumberVerified = false;
    });
  }
}
