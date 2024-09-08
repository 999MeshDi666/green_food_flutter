import 'package:flutter/material.dart';

class StyledImageCard extends StatelessWidget {
  const StyledImageCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 2, color: Color.fromRGBO(36, 70, 39, 1)),
            top: BorderSide(width: 2, color: Color.fromRGBO(36, 70, 39, 1)),
            right: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(42), bottomRight: Radius.circular(42))),
      child: Card(
          margin: EdgeInsets.zero,
          color: const Color.fromRGBO(96, 150, 100, 1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(42),
                  bottomRight: Radius.circular(42))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 52),
            child: Image.asset(
              imageUrl,
              width: 220,
              height: 220,
            ),
          )),
    );
  }
}
