import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  void toggleRememberMe() {
    rememberMe = !rememberMe;
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void login() {
  if (kDebugMode) {
    print("Login Button Pressed");
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");

  }
}
}
