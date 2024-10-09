import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/widgets/styled_order_counter/index.dart';
import 'package:green_food/widgets/styled_headline.dart';
import 'package:green_food/widgets/styled_image_card.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledImageCard(
                imageUrl: 'assets/images/apple_juice.png',
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          StyledHeadline(
                            text: "Apple juice",
                            fontSize: 42,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Lorem ipsum sit amet dolor Lorem\nipsum sit amet dolor Lorem ipsum\nsit amet dolor Lorem ipsum sit amet\ndolor",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          StyledHeadline(
                            text: "Price: \$5.00",
                            fontSize: 24,
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const StyledOrderCounter(),
                  StyledFilledButton(title: "Add To Order", onPressed: () {})
                ],
              ))
        ],
      ),
    );
  }
}
