import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_search_bar.dart';
import 'package:green_food/widgets/styled_tab_controller.dart';
import "package:green_food/widgets/styled_price_card_grid.dart";

class StyledMainCardContainer extends StatelessWidget {
  const StyledMainCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Border defaultBorder = const Border(
      left: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
      top: BorderSide(width: 6, color: Color.fromRGBO(36, 70, 39, 1)),
      right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
      bottom: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
    );
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(96, 150, 87, 1),
          border: defaultBorder,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                      ),
                      child: const Text(
                        "see more",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const StyledSearchBar(),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: StyledTabController(),
              ),
            ],
          ),
          const StyledPriceCardGrid()
        ],
      ),
    );
  }
}
