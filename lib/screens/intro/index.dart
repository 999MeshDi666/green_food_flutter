import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/widgets/styled_image_card.dart';
import 'package:green_food/widgets/styled_headline.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});
  void handleRedirectToToLogin() {
    print("redirect");
  }

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color.fromRGBO(60, 117, 62, 1);
    return Container(
        color: defaultColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledImageCard(
                  imageUrl: "assets/images/sandwich_coffee.png",
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledHeadline(text: "QUICK, FRESH & DELICIOUS"),
                        Text(
                          "Made by hand, from scratch, with love. Green food.",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StyledFilledButton(
                      title: "Get started", onPressed: handleRedirectToToLogin)
                ],
              ),
            )
          ],
        ));
  }
}
