import 'package:flutter/material.dart';
import 'package:intern_kaar/presentation/screens/auth/login_screen2.dart';
import 'package:intern_kaar/app/decorators/auth_styles.dart'; // Update the path if necessary

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04,
              vertical: screenHeight * 0.04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/images/auth_logo.jpg',
                    height: screenHeight * 0.55,
                    fit: BoxFit.cover,
                    width: screenWidth * 0.9,
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  'Enterprise Task Management',
                  style: AppStyles.titleTextStyle(screenWidth),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    'Optimizing task management for improved business performance',
                    style: AppStyles.subtitleTextStyle(screenWidth),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: AppStyles.signInButtonStyle(screenWidth),
                  child: Text('Sign in', style: AppStyles.signInButtonTextStyle),
                ),
                SizedBox(height: 15),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: AppStyles.noAccountTextStyle,
                    ),
                    SizedBox(width: 2),
                    TextButton(
                      onPressed: () {
                        // Add Register functionality here
                      },
                      style: AppStyles.registerButtonStyle,
                      child: Text(
                        'Register',
                        style: AppStyles.registerTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
