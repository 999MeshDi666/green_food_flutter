import 'package:flutter/material.dart';
import 'package:green_food/screens/auth/index.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/widgets/styled_image_card.dart';
import 'package:green_food/widgets/styled_headline.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});
  void handleRedirectToToLogin(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Auth()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledImageCard(
                  imageUrl: "assets/images/sandwich_coffee.png",
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            StyledHeadline(text: "QUICK,\nFRESH &\nDELICIOUS")
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              Text(
                                "Made by hand, from scratch, with love.\nGreen food.",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
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
                      title: "Get started",
                      onPressed: () {
                        handleRedirectToToLogin(context);
                      })
                ],
              ),
            )
          ],
        ));
  }
}
