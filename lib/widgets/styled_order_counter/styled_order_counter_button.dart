import 'package:flutter/material.dart';

class StyledOrderCounterFilledButton extends StatefulWidget {
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
  State<StyledOrderCounterFilledButton> createState() =>
      _StyledOrderCounterFilledButtonState();
}

class _StyledOrderCounterFilledButtonState
    extends State<StyledOrderCounterFilledButton> {
  bool isPressed = false;
  void onTapPressed() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapUp: (details) => onTapPressed(),
      onTapDown: (details) => onTapPressed(),
      child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: Color.fromRGBO(233, 233, 233, isPressed ? 0.9 : 1),
              borderRadius: BorderRadius.only(
                topLeft: widget.radiusLeft,
                topRight: widget.radiusRight,
                bottomLeft: widget.radiusLeft,
                bottomRight: widget.radiusRight,
              )),
          width: widget.width,
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                  color: Color.fromRGBO(41, 41, 41, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              softWrap: true,
            ),
          )),
    );
  }
}
