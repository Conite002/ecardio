import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/services/shared_pref.dart';

class DatabaseMethods {
  Future<void> addUserDetail(
      Map<String, dynamic> userInfo, String userId) async {
    FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userInfo)
        .catchError((e) {
      print(e.toString());
    });
    // store user info in shared preferences
    SharedPreferenceHelper().setUserInfoToSharedPreference(userInfo);
  }

  Future<void> updateUserInfo(
      Map<String, dynamic> userInfo, String userId) async {
    FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .update(userInfo)
        .catchError((e) {
      print(e.toString());
    });
  }

  updateUserWallet(String userId, String amount) {
    FirebaseFirestore.instance.collection("users").doc(userId).update({
      "wallet": amount,
    }).catchError((e) {
      print(e.toString());
    });
  }

  Future<Stream<DocumentSnapshot>> getUserInfo(String userId) async {
    try {
      Stream<DocumentSnapshot> userInfoStream = FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .snapshots();

      return userInfoStream;
    } catch (e) {
      print('Error fetching user info: $e');
      throw e;
    }
  }

  // Update phone number
  Future<void> updatePhoneNumber(String userId, String phoneNumber) async {
    FirebaseFirestore.instance.collection("users").doc(userId).update({
      "phoneNumber": phoneNumber,
    }).catchError((e) {
      print(e.toString());
    });
  }
}
