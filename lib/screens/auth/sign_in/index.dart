import 'package:flutter/material.dart';
import 'package:green_food/screens/auth/sign_in/widgets/styled_sing_in_form.dart';
import 'package:green_food/widgets/styled_headline.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                child: StyledHeadline(text: "SIGN IN"),
              ),
              StyledSignInForm(buttonText: "Sign in")
            ],
          ),
        ));
  }
}
