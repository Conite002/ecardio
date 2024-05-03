import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/services/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(this._firebaseAuth);

  @override
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Error signing in: $e");
      return null;
    }
  }

  Future<UserCredential?> verifyPhoneNumber(String phoneNumber,
      {required Function(String) onCodeSent,
      required Function(String) onVerified}) async {
    try {
      UserCredential? userCredential;
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          userCredential = await _firebaseAuth.signInWithCredential(credential);
          onVerified('Verification completed');
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }
          onVerified('Verification failed');
        },
        codeSent: (String verificationId, int? resendToken) {
          onCodeSent(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      return userCredential;
    } catch (e) {
      print('Error verifying phone number: $e');
      return null;
    }
  }

  Future<UserCredential?> signInWithPhoneNumber(
      String phoneNumber, String verificationId, String smsCode) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      return userCredential;
    } catch (e) {
      print('Error signing in with phone number: $e');
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      if (kDebugMode) {
        print("Error signing out: $e");
      }
    }
  }

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('test user: ${userCredential.user}');
      return userCredential.user;
    } catch (e) {
      print("Error signing up: $e");
      return null;
    }
  }

  // delete user
  Future<void> deleteUser() async {
    try {
      await _firebaseAuth.currentUser!.delete();
    } catch (e) {
      print('Error deleting user: $e');
    }
  }

  @override
  Future<User?> signInAnonymously() {
    // TODO: implement signInAnonymously
    throw UnimplementedError();
  }

  // sendPasswordResetEmail
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print('Error sending password reset email: $e');
    }
  }

  Future<bool> checkAdminRole() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String uid = user.uid;
        var data =
            await FirebaseFirestore.instance.collection("users").doc(uid).get();
        if (data.exists && data.data()!['isAdmin']) {
          return true;
        } else {
          return false;
        }
      }
      return false; // User is null
    } catch (e) {
      print('Error checking admin role: $e');
      return false;
    }
  }
}
