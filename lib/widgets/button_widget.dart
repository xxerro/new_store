import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          // Handle login button press
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
