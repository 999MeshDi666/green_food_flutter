import 'package:flutter/material.dart';
import 'package:green_food/screens/auth/sign_up/widgets/styled_sign_up_form.dart';
import 'package:green_food/widgets/styled_headline.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
            padding: const EdgeInsets.all(15),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: StyledHeadline(text: "SIGN UP"),
                ),
                StyledSignUpForm(buttonText: "Sign up"),
              ],
            )));
  }
}
