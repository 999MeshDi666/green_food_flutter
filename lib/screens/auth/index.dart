import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_image_card.dart';
import 'package:green_food/widgets/styled_filled_button.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  void handleSignIn() {
    print("sign in");
  }

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color.fromRGBO(60, 117, 62, 1);
    return Container(
      color: defaultColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(22, 0, 22, 20),
                child: Text(
                  "SIGN IN OR CREATE AN ACCOUNT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  StyledImageCard(imageUrl: "assets/images/sandwich.png")
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: StyledFilledButton(
                    title: "Sign in",
                    onPressed: handleSignIn,
                  ),
                ),
                StyledFilledButton(
                    title: "Create an account",
                    onPressed: () {
                      print("create an account");
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
