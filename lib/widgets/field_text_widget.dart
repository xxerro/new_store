import 'package:flutter/material.dart';

class FieldTextWidget extends StatefulWidget {
  final String title;
  final String hintText;
  final bool isPassword;

  const FieldTextWidget({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<FieldTextWidget> createState() => _FieldTextWidgetState();
}

class _FieldTextWidgetState extends State<FieldTextWidget> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          TextField(
            obscureText: widget.isPassword ? _obscureText : false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
