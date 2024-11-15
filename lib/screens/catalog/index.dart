import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_price_card_grid/index.dart';
import 'package:green_food/widgets/styled_search_bar.dart';
import 'package:green_food/widgets/styled_tab_controller.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.all(15),
      child: const Column(
        children: [
          StyledSearchBar(),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: StyledTabController(),
          ),
          SizedBox(child: StyledPriceCardGrid(height: 650))
        ],
      ),
    ));
  }
}
