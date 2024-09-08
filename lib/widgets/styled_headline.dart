import 'package:flutter/material.dart';

class StyledHeadline extends StatelessWidget {
  const StyledHeadline({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.4),
    );
  }
}
