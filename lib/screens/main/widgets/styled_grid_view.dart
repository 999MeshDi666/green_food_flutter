import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_price_card.dart';

class StyledPriceCardGrid extends StatelessWidget {
  const StyledPriceCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0, // Aspect ratio for the grid items
            ),
            itemCount: 6, // Number of items
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(top: 52),
                child: StyledPriceCard(
                  imageUrl: 'assets/images/apple_juice.png',
                ),
              );
            },
          )),
    );
  }
}
