import 'package:flutter/material.dart';

class StyledEmptyDataPlaceholder extends StatelessWidget {
  const StyledEmptyDataPlaceholder({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/sandwich_bottom_sheet.png",
                    width: 60,
                    height: 60,
                  ),
                  Text(
                    title,
                    softWrap: true,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
