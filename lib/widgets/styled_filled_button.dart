import 'package:flutter/material.dart';

class StyledFilledButton extends StatelessWidget {
  const StyledFilledButton(
      {super.key,
      required this.title,
      this.height = 60,
      this.width = 200,
      this.backgroundColor = const Color.fromRGBO(233, 233, 233, 1),
      this.color = const Color.fromRGBO(41, 41, 41, 1),
      this.buttonBorderRadius = 10,
      required this.onPressed});

  final double height;
  final double width;
  final String title;
  final Color color;
  final Color backgroundColor;
  final double buttonBorderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          border: const Border(
            left: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            top: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
            right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            bottom: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(buttonBorderRadius))),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 16),
            softWrap: true,
          )),
    );
  }
}
