import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PhoneNumberVerificationDialog extends StatelessWidget {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _verificationCodeController =
      TextEditingController();
  String? _verificationId;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Phone Number Verification'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Enter your phone number:'),
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                await _verifyPhoneNumber(
                    context, _phoneNumberController.text.trim());
              },
              child: const Text('Send Verification Code'),
            ),
            const SizedBox(height: 20),
            const Text('Enter verification code:'),
            TextField(
              controller: _verificationCodeController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                await _verifyCode(
                    context, _verificationCodeController.text.trim());
              },
              child: Text('Verify Code'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _verifyPhoneNumber(
      BuildContext context, String phoneNumber) async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance.signInWithCredential(credential);
          Navigator.pop(context);
          print(
              "Phone number automatically verified and signed in: ${FirebaseAuth.instance.currentUser!.phoneNumber}");
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          } else {
            print('Verification failed: ${e.message}');
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          // Store the verification ID when code is sent
          _verificationId = verificationId;
          print('Verification code sent');
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto retrieval timeout
        },
        timeout: const Duration(seconds: 60), // Timeout duration for SMS code
        autoRetrievedSmsCodeForTesting: '123456',
      );
    } catch (e) {
      print('Error verifying phone number: $e');
    }
  }

  Future<void> _verifyCode(
      BuildContext context, String verificationCode) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: _verificationId ?? '',
          smsCode: verificationCode); // Use stored verification ID
      await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.pop(context);
      print(
          "Phone number verified and signed in: ${FirebaseAuth.instance.currentUser!.phoneNumber}");
    } catch (e) {
      print('Error verifying code: $e');
    }
  }

  void showPhoneNumberVerificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Phone Number Verification'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Enter your phone number:'),
                TextField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    await _verifyPhoneNumber(
                        context, _phoneNumberController.text.trim());
                  },
                  child: Text('Send Verification Code'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
