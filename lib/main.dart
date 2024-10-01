import 'package:flutter/material.dart';
import 'splash_screen.dart';  // Import the SplashScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),  // Start with SplashScreen
    );
  }
}
