import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_price_card_grid/styled_price_card.dart';

//'assets/images/apple_juice.png';
class StyledPriceCardGrid extends StatelessWidget {
  const StyledPriceCardGrid(
      {super.key, required this.cardList, required this.height});
  final List<Map<String, String>> cardList;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          children: cardList.map((item) {
            return StyledPriceCard(
                title: item['title']!,
                subtitle: item['subtitle']!,
                price: item['price']!,
                type: item['type']!,
                imageUrl: item['imageUrl']!);
          }).toList()),
    );
  }
}
