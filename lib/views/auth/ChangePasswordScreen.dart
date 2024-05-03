import 'package:ecardio/services/repository/firebase_auth_repository.dart';
import 'package:ecardio/widgets/appconfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  bool _isButtonDisabled = false;

  void _recoverPassword(BuildContext context) async {
    String email = _emailController.text;
    Future.delayed(const Duration(seconds: 15), () {
      setState(() {
        _isButtonDisabled = false;
      });
    });

    setState(() {
      _isButtonDisabled = true;
    });
    final scaffoldContext = ScaffoldMessenger.of(context);
    // Send password reset email
    try {
      await FirebaseAuthRepository(FirebaseAuth.instance)
          .sendPasswordResetEmail(email);

      scaffoldContext.showSnackBar(
        SnackBar(
          content: Text(
            "Le lien de réinitialisation est envoyé à: $email",
            style: const TextStyle(
              fontSize: 18.0,
              color: AppColors.secondaryColor,
            ),
          ),
        ),
      );
    } catch (e) {
      scaffoldContext.showSnackBar(
        SnackBar(
          content: Text(
            "Error: ${e.toString()}",
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.redAccent,
            ),
          ),
        ),
      );
    } finally {
      // Re-enable the button after the operation completes
      setState(() {
        _isButtonDisabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changer le mot de passe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed:
                  _isButtonDisabled ? null : () => _recoverPassword(context),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: _isButtonDisabled ? Colors.grey : Colors.black,
              ),
              child: Text(
                "Réinitialiser le mot de passe",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
