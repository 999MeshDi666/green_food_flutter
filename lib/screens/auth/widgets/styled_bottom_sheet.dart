import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_headline.dart';
import 'package:green_food/screens/auth/widgets/styled_form.dart';

class StyledBottomSheet extends StatelessWidget {
  const StyledBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 380,
        decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
              top: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
              right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
              bottom:
                  BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            ),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: const Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: StyledHeadline(text: "SIGN IN"),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: StyledForm(),
                ),
              ]),
        ));
  }
}
