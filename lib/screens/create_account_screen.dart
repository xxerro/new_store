import 'package:flutter/material.dart';
import 'package:new_store/screens/discover_screen.dart';
import 'package:new_store/widgets/field_text_widget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
              "Create your account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Let’s create your account.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 24),
            FieldTextWidget(
              title: "Full Name",
              hintText: "Enter your full name",
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            FieldTextWidget(
              title: "Confirm Password",
              hintText: "Re-enter your password",
              isPassword: true,
            ),
            SizedBox(height: 42),
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
                  "Already have an account?",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login_screen');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
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
