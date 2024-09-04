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
    Color defaultColor = const Color.fromRGBO(60, 117, 62, 1);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: defaultColor),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: defaultColor,
        ),
        body: Container(
            color: defaultColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                        margin: EdgeInsets.zero,
                        color: const Color.fromRGBO(96, 150, 100, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(42),
                                bottomRight: Radius.circular(42))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 48, horizontal: 52),
                          child: Image.asset(
                            "assets/images/sandwich.png",
                            width: 220,
                            height: 220,
                          ),
                        )),
                    const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quick, Fresh & Delicious",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  height: 1.4),
                            ),
                            Text(
                              "Made by hand, from scratch, with love.Green food.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
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
                      const Column(
                        children: [],
                      ),
                      StyledFilledButton(
                          title: "Get started",
                          onPressed: handleRedirectToToLogin)
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
