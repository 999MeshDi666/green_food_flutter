import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_price_card.dart';
import 'package:green_food/screens/main/widgets/styled_search_bar.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    Color defaultColor = const Color.fromRGBO(60, 117, 62, 1);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColor,
      ),
      body: Container(
        color: defaultColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(96, 150, 87, 1),
                  border: const Border(
                    left: BorderSide(
                        width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
                    top: BorderSide(
                        width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
                    right: BorderSide(
                        width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                          ),
                          child: const Text(
                            "see more",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  const StyledSearchBar()
                  // StyledPriceCard(imageUrl: "assets/images/apple_juice.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
