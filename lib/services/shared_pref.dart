import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String userIdkey = "USERID";
  static String userNameKey = "USERNAME";
  static String userEmailKey = "USEREMAIL";
  static String userWalletKey = "USERWALLET";
  static String userProfileKey = "USERPROFILE";
  static String userPhoneNumberKey = "USERPHONENUMBER";

  Future<bool> saveUserId(String getuserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdkey, getuserId);
  }

  Future<bool> saveUserName(String getuserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getuserName);
  }

  Future<bool> saveUserEmail(String getuserEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getuserEmail);
  }

  Future<bool> saveUserWallet(String getuserWallet) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userWalletKey, getuserWallet);
  }

  Future saveUserPhotoUrl(String getuserPhotoUrl) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userProfileKey, getuserPhotoUrl);
  }

  Future saveUserPhoneNumber(String getuserPhoneNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userPhoneNumberKey, getuserPhoneNumber);
  }

  Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userIdkey);
  }

  Future<String?> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }

  Future<String?> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);
  }

  Future<String?> getUserWallet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userWalletKey);
  }

  Future<String?> getUserProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userProfileKey);
  }

  Future<bool> saveUserProfile(String getuserProfile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userProfileKey, getuserProfile);
  }

  Future<String?> getUserPhoneNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPhoneNumberKey);
  }

  Future<bool> clearSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

  Future<bool> saveUserBirthDate(String getuserBirthDate) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("USERBIRTHDATE", getuserBirthDate);
  }

  Future<String?> getUserBirthDate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("USERBIRTHDATE");
  }

  Future<bool> saveUserGender(String getuserGender) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("USERGENDER", getuserGender);
  }

  Future<String?> getUserGender() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("USERGENDER");
  }

  Future<bool> saveUserAddress(String getuserAddress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("USERADDRESS", getuserAddress);
  }

  Future<String?> getUserAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("USERADDRESS");
  }

  Future<bool> saveUserProfession(String getuserProfession) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("USERPROFESSION", getuserProfession);
  }

  Future<String?> getUserProfession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("USERPROFESSION");
  }

  void setUserInfoToSharedPreference(Map data) {
    String? userName = data['Name'];
    String? userEmail = data['Email'];
    String? userWallet = data['Wallet'];
    String? userId = data['ID'];
    String? userProfile = data['Profile'];
    String? userPhoneNumber = data['Phone'];
    String? userBirthDate = data['BirthDate'];
    String? userGender = data['Gender'];
    String? userAddress = data['Address'];
    String? userProfession = data['Profession'];

    if (userName != null) {
      SharedPreferenceHelper().saveUserName(userName);
    }
    if (userEmail != null) {
      SharedPreferenceHelper().saveUserEmail(userEmail);
    }
    if (userWallet != null) {
      SharedPreferenceHelper().saveUserWallet(userWallet);
    }
    if (userId != null) {
      SharedPreferenceHelper().saveUserId(userId);
    }
    if (userProfile != null) {
      SharedPreferenceHelper().saveUserProfile(userProfile);
    }
    if (userPhoneNumber != null) {
      SharedPreferenceHelper().saveUserPhoneNumber(userPhoneNumber);
    }
    if (userBirthDate != null) {
      SharedPreferenceHelper().saveUserBirthDate(userBirthDate);
    }
    if (userGender != null) {
      SharedPreferenceHelper().saveUserGender(userGender);
    }
    if (userAddress != null) {
      SharedPreferenceHelper().saveUserAddress(userAddress);
    }
    if (userProfession != null) {
      SharedPreferenceHelper().saveUserProfession(userProfession);
    }
  }
}
