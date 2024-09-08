import 'package:flutter/material.dart';

class StyledBottomSheet extends StatelessWidget {
  const StyledBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color.fromRGBO(96, 150, 87, 1);
    return SizedBox(
        height: 380,
        // color: defaultColor,
        child: const Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("SIGN IN"),
              ]),
        ));
  }
}
