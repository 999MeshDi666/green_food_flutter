import 'package:flutter/material.dart';

class StyledHeadline extends StatelessWidget {
  const StyledHeadline({super.key, required this.text, this.fontSize = 32});
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          height: 1.4),
    );
  }
}
