import 'package:flutter/material.dart';

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
                const Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 6),
                          child: Text(
                            "Quick, Fresh & Delicious",
                            softWrap: true,
                            style: TextStyle(color: Colors.white),
                          )),
                      Text(
                        "Made by hand, from scratch, with love. Green food.",
                        softWrap: true,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [],
                    ),
                    FilledButton(
                        onPressed: handleRedirectToToLogin,
                        child: const Text("Get started")),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
