import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<UserCredential?> signInWithPhoneNumber(
      String phoneNumber, String verificationId, String smsCode);
  Future<User?> signInAnonymously();
  Future<UserCredential?> verifyPhoneNumber(String phoneNumber,
      {required Function(String) onCodeSent,
      required Function(String) onVerified});
  Future<void> signOut();
}
