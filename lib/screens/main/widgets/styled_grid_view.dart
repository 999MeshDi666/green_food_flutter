import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_price_card.dart';

class StyledGridView extends StatelessWidget {
  const StyledGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      crossAxisCount: 1,
      children: const [
        StyledPriceCard(imageUrl: "assets/images/apple_juice.png"),
        StyledPriceCard(imageUrl: "assets/images/apple_juice.png"),
        StyledPriceCard(imageUrl: "assets/images/apple_juice.png"),
      ],
    );
  }
}
