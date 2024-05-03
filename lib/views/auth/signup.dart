import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/localization/applocalization.dart';
import 'package:ecardio/services/repository/firebase_auth_repository.dart';
import 'package:ecardio/services/shared_pref.dart';
import 'package:ecardio/views/users/additionalInfo.dart';
import 'package:ecardio/views/auth/login.dart';
import 'package:ecardio/widgets/appconfig.dart';
import 'package:ecardio/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = "", password = "", name = "";
  Color dynamicPrimaryColor = AppColors.secondaryColor;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password == confirmpasswordcontroller.text) {
      // Check email format
      final emailFormatRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailFormatRegex.hasMatch(email)) {
        final invalidEmailMessage =
            AppLocalizations.fr["invalidEmailFormat"] ?? "";
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              invalidEmailMessage,
              style: const TextStyle(fontSize: 18.0),
            )));
        return;
      }

      try {
        User? user = await FirebaseAuthRepository(FirebaseAuth.instance)
            .signUpWithEmailAndPassword(email, password);
        print('user ===> ${user!.uid}');
        final registrationSuccessMessage =
            AppLocalizations.fr["registeredSuccessfully"] ?? "";

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: dynamicPrimaryColor,
            content: Text(
              registrationSuccessMessage,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        );

        SharedPreferenceHelper().saveUserName(name);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => AdditionalInfo(userId: user.uid)));
      } catch (e) {
        if (e.toString().contains('weak-password')) {
          final passwordWeakMessage =
              AppLocalizations.fr['passwordWeak'] ?? 'en';
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: AppColors.secondaryColor,
              content: Text(
                passwordWeakMessage,
                style: const TextStyle(fontSize: 18.0),
              )));
        }
        if (e.toString().contains('email-already-in-use')) {
          final emailInUseMessage =
              AppLocalizations.fr['emailAlreadyUse'] ?? 'Email already use';
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: AppColors.secondaryColor,
              content: Text(
                emailInUseMessage,
                style: const TextStyle(fontSize: 18.0),
              )));
        }
        print('Error signing up: ${e}');
        final emailAlreadyUse = AppLocalizations.fr['tryAgain'] ?? 'en';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              emailAlreadyUse,
              style: const TextStyle(fontSize: 18.0),
            )));
      }
    } else {
      final passwordMatchMessage = AppLocalizations.fr["passwordMatch"] ?? "";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: AppColors.secondaryColor,
          content: Text(
            passwordMatchMessage,
            style: const TextStyle(fontSize: 18.0),
          )));
    }
  }

  saveuserinfo() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    DocumentSnapshot doc =
        await FirebaseFirestore.instance.collection("users").doc(uid).get();
    await SharedPreferenceHelper().saveUserEmail(doc['Email']);
    await SharedPreferenceHelper().saveUserName(doc['Name']);
    await SharedPreferenceHelper().saveUserId(uid);
    await SharedPreferenceHelper().saveUserGender(doc['Gender']);
    await SharedPreferenceHelper().saveUserBirthDate(doc['BirthDate']);
    await SharedPreferenceHelper().saveUserProfession(doc['Profession']);
    await SharedPreferenceHelper().saveUserPhoneNumber(doc['PhoneNumber']);
    await SharedPreferenceHelper().saveUserWallet(doc['Wallet']);

    setState(() {});
  }

  onthisload() async {
    await saveuserinfo();
    setState(() {});
  }

  @override
  void initState() {
    onthisload();
    super.initState();
  }

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
                      AppColors.secondaryColor,
                      AppColors.secondaryColor,
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
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text('Ecardio',
                          style: AppWidget.logoTextStyle('white')),
                    ),
                    SizedBox(height: 50.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            mainAxisSize: MainAxisSize
                                .min, // Set to min to avoid overflow
                            children: [
                              const SizedBox(height: 30.0),
                              Text(
                                AppLocalizations.fr["signUp"] ?? "",
                                style: AppWidget.headlineTextFeildStyle(),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: namecontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr["pleaseEnterName"] ??
                                        "";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.fr["name"] ?? "",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.person_outlined),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: mailcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr["pleaseEnterEmail"] ??
                                        "";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.fr["email"] ?? '',
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.email_outlined),
                                ),
                              ),
                              SizedBox(height: 30.0),
                              TextFormField(
                                controller: passwordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr["pleaseEnterPassword"] ??
                                        '';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText:
                                      AppLocalizations.fr["password"] ?? "",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.password_outlined),
                                ),
                              ),
                              SizedBox(height: 40.0),
                              TextFormField(
                                controller: confirmpasswordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.fr[
                                            "pleaseEnterConfirmationPassword"] ??
                                        '';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText:
                                      AppLocalizations.fr["confirmPassword"] ??
                                          "",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: Icon(Icons.password_outlined),
                                ),
                              ),
                              SizedBox(height: 40.0),
                              GestureDetector(
                                onTap: () async {
                                  if (_formkey.currentState!.validate()) {
                                    setState(() {
                                      email = mailcontroller.text;
                                      name = namecontroller.text;
                                      password = passwordcontroller.text;
                                    });
                                  }
                                  registration();
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 16.0),
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppLocalizations.fr["signUp"] ?? "",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins1',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 50.0),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LogIn(),
                                    ),
                                  );
                                },
                                child: Text(
                                  AppLocalizations.fr["alreadyHaveAnAccount"] ??
                                      "",
                                  selectionColor: Colors.red,
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
