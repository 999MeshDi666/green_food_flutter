import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color.fromRGBO(60, 117, 62, 1);
    return Scaffold(
      appBar: AppBar(backgroundColor: defaultColor),
      body: Container(
        color: defaultColor,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/icons/apple_juice.png"),
                Card(
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text("Apple juice"),
                        subtitle: Text("Price: \$5.00"),
                      ),
                      Row(
                        children: [
                          FilledButton(
                              onPressed: () {
                                print("click");
                              },
                              child: const Text("ORDER"))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
