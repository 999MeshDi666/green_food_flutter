import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_price_card.dart';

class StyledPriceCardGrid extends StatelessWidget {
  const StyledPriceCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: const StyledPriceCard(
                    imageUrl: 'assets/images/apple_juice.png',
                  ));
            }),
          )),
    );
  }
}
