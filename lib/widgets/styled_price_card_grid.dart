import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_price_card.dart';

class StyledPriceCardGrid extends StatelessWidget {
  const StyledPriceCardGrid({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 40,
        children: List.generate(10, (index) {
          return const StyledPriceCard(
            imageUrl: 'assets/images/apple_juice.png',
          );
        }),
      ),
    );
  }
}
