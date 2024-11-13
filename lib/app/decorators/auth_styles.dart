import 'package:flutter/material.dart';

class AppStyles {
  static const Color primaryButtonColor = Color.fromARGB(255, 161, 123, 226);
  static const Color subtitleTextColor = Color.fromARGB(163, 3, 3, 3);
  static const Color registerButtonTextColor = Colors.deepPurple;

  static TextStyle titleTextStyle(double screenWidth) => TextStyle(
        fontSize: screenWidth * 0.08, // Dynamic font size
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      );

  static TextStyle subtitleTextStyle(double screenWidth) => TextStyle(
        fontSize: screenWidth * 0.05, // Dynamic font size
        color: subtitleTextColor,
      );

  static TextStyle signInButtonTextStyle = const TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

  static TextStyle registerTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: registerButtonTextColor,
  );

  static TextStyle noAccountTextStyle = const TextStyle(
    fontSize: 15,
  );

  static ButtonStyle signInButtonStyle(double screenWidth) =>
      ElevatedButton.styleFrom(
        backgroundColor: primaryButtonColor,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.3, // Dynamic button padding
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static ButtonStyle registerButtonStyle = TextButton.styleFrom(
    padding: EdgeInsets.zero,
    minimumSize: Size(0, 0),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
