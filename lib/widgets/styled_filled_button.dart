import 'package:flutter/material.dart';

class StyledFilledButton extends StatelessWidget {
  const StyledFilledButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            top: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
            right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            bottom: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: FilledButton(
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
          )),
    );
  }
}