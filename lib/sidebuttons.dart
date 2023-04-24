import 'package:flutter/material.dart';

class SideButtons extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const SideButtons({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        backgroundColor: Colors.transparent,
        // primary: Colors.transparent,
        elevation: 0,
        // animationDuration:
        // onSurface: Colors.blue,
      ),
      child: Row(
        children: [
          Icon(color: Colors.black, icon),
          SizedBox(width: 16),
          Text(
              style: TextStyle(
                color: Colors.black,
              ),
              text),
        ],
      ),
    );
  }
}
