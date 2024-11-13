// app_subtitle_text.dart
import 'package:flutter/material.dart';

class AppSubtitleText extends StatelessWidget {
  final String text;
  final double fontSize;

  AppSubtitleText({required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.left,
    );
  }
}
