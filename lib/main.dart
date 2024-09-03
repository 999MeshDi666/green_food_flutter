import 'package:flutter/material.dart';
import 'package:green_food/components/styled_filled_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void handleRedirectToToLogin() {
    print("redirect");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(60, 117, 62, 1),
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(60, 117, 62, 1),
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 40),
            color: const Color.fromRGBO(60, 117, 62, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/sandwich.png",
                      width: 220,
                      height: 220,
                    ),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 6),
                        child: Text(
                          "Quick,\nFresh & \nDelicious",
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              height: 1.4),
                        )),
                    const Text(
                      "Made by hand, from scratch, with love. Green food.",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Column(
                      children: [],
                    ),
                    StyledFilledButton(
                        title: "Get started",
                        onPressed: handleRedirectToToLogin)
                  ],
                )
              ],
            )),
      ),
    );
  }
}
