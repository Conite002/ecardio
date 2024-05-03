import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/localization/applocalization.dart';
import 'package:ecardio/services/shared_pref.dart';
import 'package:ecardio/views/bottomnav.dart';
import 'package:ecardio/views/auth/forgotpassword.dart';
import 'package:ecardio/views/auth/signup.dart';
import 'package:ecardio/widgets/appconfig.dart';
import 'package:ecardio/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecardio/localization/applocalization.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "", password = "";

  final _formkey = GlobalKey<FormState>();

  TextEditingController useremailcontroller = TextEditingController();
  TextEditingController userpasswordcontroller = TextEditingController();

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

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "User Logged In Successfully",
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNav(),
        ),
      );

      // String uid = FirebaseAuth.instance.currentUser!.uid;
      // var data =
      //     await FirebaseFirestore.instance.collection("users").doc(uid).get();
      // if (data.exists && data.data()!['isAdmin']) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => AdminLogin(),
      //     ),
      //   );
      //   return;
      // } else {
      //   Navigator.of(context).popUntil((route) => route.isFirst);

      //   // Navigator.push(
      //   //   context,
      //   //   MaterialPageRoute(
      //   //     builder: (context) => BottomNav(),
      //   //   ),
      //   // );
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => BottomNav()),
      //   );
      // }
    } on FirebaseAuthException catch (e) {
      String errorMessage = e.toString();

      if (errorMessage.contains('user-not-found')) {
        // Handle user not found error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              //"No User Found for that Email",
              AppLocalizations.fr["No_user_found_for_that_email"] ??
                  "No User Found for that Email",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else if (errorMessage.contains('wrong-password')) {
        // Handle wrong password error
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Wrong_Password_Provided_by_User",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else {
        // Handle other FirebaseAuth errors
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Email or Password is Incorrect",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor:
              AppColors.backgroundColor, // Change the background color here
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                  children: [
                    Center(
                      child: Text('Ecardio',
                          style: AppWidget.logoTextStyle('white')),
                    ),
                    const SizedBox(height: 50.0),
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
                            children: [
                              Text(
                                AppLocalizations.fr["login"] ?? "Login",
                                style: AppWidget.headlineTextFeildStyle(),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: useremailcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "S'il vous plaît entrez votre adresse e-mail.";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon: const Icon(Icons.email_outlined),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: userpasswordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations
                                            .fr["pleaseEnterPassword"] ??
                                        "Please enter your password";
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.fr["password"] ??
                                      "Password",
                                  hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                  prefixIcon:
                                      const Icon(Icons.password_outlined),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Mot de passe oublié?",
                                    style: AppWidget.semiBoldTextFeildStyle(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40.0), // Adjusted height
                              GestureDetector(
                                onTap: () {
                                  if (_formkey.currentState!.validate()) {
                                    setState(() {
                                      email = useremailcontroller.text;
                                      password = userpasswordcontroller.text;
                                    });
                                  }
                                  userLogin();
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 16.0),
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "LOGIN",
                                        style: TextStyle(
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
                              const SizedBox(
                                  height:
                                      20.0), // Added space below LOGIN button
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        AppLocalizations.fr["Don't_have_an_account?_Sign_up"] ??
                            "Don't have an account?",
                        style: AppWidget.semiBoldTextFeildStyle(),
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
