import 'package:ecardio/services/repository/auth_repository.dart';
import 'package:ecardio/services/repository/firebase_auth_repository.dart';
import 'package:ecardio/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneNumberSignIn extends StatefulWidget {
  @override
  _PhoneNumberSignInState createState() => _PhoneNumberSignInState();
}

class _PhoneNumberSignInState extends State<PhoneNumberSignIn> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _smsCodeController = TextEditingController();

  final AuthRepository _authService =
      FirebaseAuthRepository(FirebaseAuth.instance);

  String _verificationId = '';
  String _onverfiedMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30.0),
                      Text(
                        "Se connecter avec un numéro de téléphone",
                        style: AppWidget.headlineTextFeildStyle(),
                      ),
                      const SizedBox(height: 30.0),
                      TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          hintText: 'Numero de téléphone (+1234567890)',
                          hintStyle: AppWidget.semiBoldTextFeildStyle(),
                          prefixIcon: Icon(Icons.phone_android_outlined),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () async {
                          await _authService.verifyPhoneNumber(
                            '+${_phoneNumberController.text}',
                            onCodeSent: (String verificationId) {
                              setState(() {
                                _verificationId = verificationId;
                              });
                            },
                            onVerified: (String message) {
                              _onverfiedMessage = message;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(message)),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Vérifier le numéro de téléphone',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0Xffff5722),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Visibility(
                        visible: _verificationId.isNotEmpty,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _smsCodeController,
                              decoration: InputDecoration(
                                hintText: 'SMS Code',
                                hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                prefixIcon: Icon(Icons.message_outlined),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            ElevatedButton(
                              onPressed: () async {
                                await _authService.signInWithPhoneNumber(
                                  _verificationId,
                                  _smsCodeController.text,
                                  _onverfiedMessage,
                                );
                              },
                              child: Text(
                                'Se connecter',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0Xffff5722),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
