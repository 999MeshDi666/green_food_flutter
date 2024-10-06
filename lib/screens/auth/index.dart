import 'package:flutter/material.dart';
import 'package:green_food/screens/auth/sign_in/index.dart';
import 'package:green_food/screens/auth/sign_up/index.dart';
import 'package:green_food/widgets/styled_headline.dart';
import 'package:green_food/widgets/styled_image_card.dart';
import 'package:green_food/widgets/styled_filled_button.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(22, 0, 22, 20),
                  child: StyledHeadline(text: "SIGN IN OR CREATE AN ACCOUNT")),
              Row(
                children: [
                  StyledImageCard(imageUrl: "assets/images/sandwich.png")
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: StyledFilledButton(
                    title: "Sign in",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    },
                  ),
                ),
                StyledFilledButton(
                    title: "Sign up",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
