import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledHeadline extends StatelessWidget {
  const StyledHeadline({super.key, required this.text, this.fontSize = 32});
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
