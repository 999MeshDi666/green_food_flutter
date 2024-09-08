import 'package:flutter/material.dart';

class StyledFilledButton extends StatelessWidget {
  const StyledFilledButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: const Color.fromRGBO(233, 233, 233, 1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
              color: Color.fromRGBO(41, 41, 41, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          softWrap: true,
        ));
  }
}
