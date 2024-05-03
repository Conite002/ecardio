import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 8, 78, 255);
  static const Color secondaryColor = Color.fromARGB(255, 60, 160, 237);
  static const Color lightPrimaryColor = Color.fromARGB(147, 118, 222, 250);
  static const Color backgroundColor = Color(0xFFE0E0E0);
  static const Color textColor = Color(0xFF333333);
  // Add more colors as needed
}

const ColorScheme colorScheme = ColorScheme(
  primary: AppColors.primaryColor,
  secondary: AppColors.secondaryColor,
  background: AppColors.backgroundColor,
  surface: AppColors.backgroundColor, // You can adjust this if needed
  onBackground: AppColors.textColor,
  onError: AppColors.textColor,
  onPrimary: Colors.white, // Text color on primary color
  onSecondary: Colors.white, // Text color on secondary color
  onSurface: AppColors.textColor,
  brightness: Brightness.light,
  error: AppColors.backgroundColor, // You can adjust this based on your theme
);

final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.primaryColor,
  colorScheme: colorScheme,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.textColor),
  ),
);

class AppConfig with ChangeNotifier {
  Color primaryColor;
  Color secondaryColor;
  Color textColor;
  // Add other colors as needed

  AppConfig({
    required this.primaryColor,
    required this.secondaryColor,
    required this.textColor,
  });

  void updatePrimaryColor(Color newColor) {
    primaryColor = newColor;
    notifyListeners();
  }

  void updateSecondaryColor(Color newColor) {
    secondaryColor = newColor;
    notifyListeners();
  }

  void updateTextColor(Color newColor) {
    textColor = newColor;
    notifyListeners();
  }
}
