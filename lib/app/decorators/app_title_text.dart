// app_title_text.dart
import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  final String text;
  final double fontSize;

  AppTitleText({required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }
}

