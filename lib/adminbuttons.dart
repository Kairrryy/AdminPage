import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminButtons extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextEditingController controller;

  const AdminButtons({
    Key? key,
    required this.text,
    required this.obscureText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: controller,
              cursorHeight: 24,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 24),
                contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
