import 'package:flutter/material.dart';

class StyledOrderCounterFilledButton extends StatelessWidget {
  const StyledOrderCounterFilledButton(
      {super.key,
      required this.text,
      this.width = 50,
      this.radiusLeft = const Radius.circular(5),
      this.radiusRight = const Radius.circular(5),
      required this.onPressed});
  final double width;
  final String text;
  final VoidCallback onPressed;
  final Radius radiusLeft;
  final Radius radiusRight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            padding: EdgeInsets.zero,
            backgroundColor: const Color.fromRGBO(233, 233, 233, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: radiusLeft,
              topRight: radiusRight,
              bottomLeft: radiusLeft,
              bottomRight: radiusRight,
            )),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromRGBO(41, 41, 41, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16),
            softWrap: true,
          )),
    );
  }
}
