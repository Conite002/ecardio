import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle logoTextStyle(String color) {
    return TextStyle(
      color: color == 'white' ? Colors.white : Colors.black,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle boldTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle semiBoldTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle normalTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle smallTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w100,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle headlineTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle lightTextFeildStyle() {
    return const TextStyle(
      color: Colors.black38,
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    );
  }
}
