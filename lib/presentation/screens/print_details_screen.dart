import 'package:flutter/material.dart';

class PrintDetailsScreen extends StatelessWidget {
  final String email;
  final String password;

  PrintDetailsScreen({required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Entered'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email: $email", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Password: $password", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
