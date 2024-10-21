import 'package:flutter/material.dart';

class StyledDeleteButton extends StatelessWidget {
  const StyledDeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 75,
        height: 106,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10)),
        child: FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: const Color.fromRGBO(144, 39, 33, 1)),
            child: const Icon(Icons.delete)));
  }
}
