import 'package:flutter/material.dart';
import 'package:intern_kaar/app/decorators/app_primary_button.dart';
import 'package:intern_kaar/app/decorators/app_subtitle_text.dart';
import 'package:intern_kaar/app/decorators/app_text_field.dart';
import 'package:intern_kaar/app/decorators/app_title_text.dart';
import 'package:intern_kaar/app/Controllers/login_controller.dart';
import 'package:intern_kaar/presentation/screens/print_details_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = LoginController();

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Transform.rotate(
            angle: 0.7,
            child: Icon(Icons.undo),
          ),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                AppTitleText(text: "Let's Sign you in.", fontSize: screenWidth * 0.1),
                SizedBox(height: 8),
                AppSubtitleText(
                  text: "Welcome back.\nYou've been missed!",
                  fontSize: screenWidth * 0.08,
                ),
                SizedBox(height: 32),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email", style: TextStyle(fontWeight: FontWeight.w500, fontSize: screenWidth * 0.04)),
                      AppTextField(
                        hintText: 'Your email',
                        controller: loginController.emailController,
                      ),
                      SizedBox(height: 16),
                      Text("Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: screenWidth * 0.04)),
                      AppTextField(
                        hintText: 'Password',
                        controller: loginController.passwordController,
                        obscureText: true,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      AppPrimaryButton(
                        text: 'Log in',
                       onPressed: () {
                          // Navigate to PrintDetailsScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrintDetailsScreen(
                                email: loginController.emailController.text,
                                password: loginController.passwordController.text,
                              ),
                            ),
                          );
                        },
                
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Don’t have an account?", style: TextStyle(fontSize: 15)),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
