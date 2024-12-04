import 'package:flutter/material.dart';

class StyledFilledButton extends StatefulWidget {
  const StyledFilledButton(
      {super.key,
      required this.title,
      this.height = 60,
      this.width = 200,
      this.backgroundColor = const Color.fromRGBO(233, 233, 233, 1),
      this.color = const Color.fromRGBO(41, 41, 41, 1),
      this.buttonBorderRadius = 8,
      required this.onPressed});

  final double height;
  final double width;
  final String title;
  final Color color;
  final Color backgroundColor;
  final double buttonBorderRadius;
  final VoidCallback onPressed;

  @override
  State<StyledFilledButton> createState() => _StyledFilledButtonState();
}

class _StyledFilledButtonState extends State<StyledFilledButton> {
  bool _isPressed = false;
  void onTapPressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: (details) => onTapPressed(),
      onTapUp: (details) => onTapPressed(),
      child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(boxShadow: [
            const BoxShadow(
              color: Color.fromRGBO(36, 70, 39, 1),
            ),
            BoxShadow(
              blurRadius: 0,
              blurStyle: BlurStyle.solid,
              color: widget.backgroundColor,
              offset: Offset(0, _isPressed ? 0 : -4),
              spreadRadius: 0,
            ),
          ], borderRadius: BorderRadius.circular(widget.buttonBorderRadius)),
          child: Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: _isPressed ? 0 : 8),
            child: Text(
              widget.title,
              style: TextStyle(
                  color: widget.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              softWrap: true,
            ),
          ))),
    );
  }
}
