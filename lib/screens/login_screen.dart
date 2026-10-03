import 'package:flutter/material.dart';
import 'package:new_store/screens/discover_screen.dart';
import 'package:new_store/widgets/field_text_widget.dart';
import 'package:new_store/screens/create_account_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 59),
            Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "It’s great to see you again.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            SizedBox(height: 24),

            FieldTextWidget(
              title: "Email",
              hintText: "Enter your email address",
            ),

            SizedBox(height: 16),
            FieldTextWidget(
              title: "Password",
              hintText: "Enter your password",
              isPassword: true,
            ),

            SizedBox(height: 55),

            InkWell(
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DiscoverScreen()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateAccount()),
                    );
                  },
                  child: Text(
                    "Join",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
