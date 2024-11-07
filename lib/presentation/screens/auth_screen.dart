import 'package:flutter/material.dart';
import 'package:intern_kaar/presentation/screens/login_screen2.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen's height and width
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.width*0.01, 
              vertical: mediaQuery.height * 0.04, // Adjust the vertical padding based on screen height
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your image here
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/images/auth_logo.jpg',
                    height: mediaQuery.height * 0.55, // Adjust the image height based on screen height
                    fit: BoxFit.cover,
                    width: mediaQuery.width * 1.1, // Adjust the image width based on screen width
                  ),
                ),
                SizedBox(height: 20), // Add space between the image and the text

                // Text widgets for title and subtitle
                Text(
                  'Enterprise Task Management',
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.08, // Dynamic font size
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14), 
                  child: Text(
                    'Optimizing task management for improved business performance',
                    style: TextStyle(
                      fontSize: mediaQuery.width * 0.05, // Dynamic font size
                      color: const Color.fromARGB(163, 3, 3, 3),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),

                // Sign In button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => LoginScreen()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 161, 123, 226),
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.width * 0.3, // Dynamic button padding
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),

                // Register option
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: 2),
                    TextButton(
                      onPressed: () {
                        // Add Register functionality here
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
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
