import 'package:flutter/material.dart';
import 'dart:async';  
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          // Full-screen image
          Center(
            child: Image.asset(
              'assets/images/splash_screen.png',
              fit: BoxFit.cover,  
              width: double.infinity, 
              height: double.infinity,  
            ),
          ),
         
          
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),  
                SizedBox(height: 350), 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),  
                  child: Text(
                    "InternKaar connects you with the right internships to prepare you for the professional world. Gain hands-on experience and build the skills that employers value, all through our curated internship opportunities.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,  
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
