import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers to handle user input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
    
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    // Handle SignUp Tap
                    print("Navigating to Sign Up screen");
                  },
                  child: Text(
                    "Don't have an account yet? Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                
                    ),
                  ),
                ),
                SizedBox(height: 32),
                // Email/Phone number input
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email or Phone Number',
                    hintText: 'Email@Example.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // Password input
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter 8 Characters or more',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: TextButton(
                      onPressed: () {
                        // Handle Forgot Password
                        print("Forgot Password tapped");
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                // Remember me checkbox
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    Text('Remember me'),
                  ],
                ),
                SizedBox(height: 16),
                // Login button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login
                      print("Login Button Pressed");
                      print("Email: ${_emailController.text}");
                      print("Password: ${_passwordController.text}");
                      print("Remember Me: $_rememberMe");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.0), backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text('Login'),
                  ),
                ),
                SizedBox(height: 32),
                // Divider with 'Or'
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Or'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 16),
                // Sign in using Google button with a local asset image
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      print("Google Sign-in pressed");
                    },
                     icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/2/2d/Google-favicon-2015.png',
                    height: 24,
                    width: 24,
                  ),
                    label: Text('Sign in using Google'),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
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
