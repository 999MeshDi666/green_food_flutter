import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_grid_view.dart';

import 'package:green_food/screens/main/widgets/styled_search_bar.dart';
import 'package:green_food/screens/main/widgets/styled_tab_controller.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    Border defaultBorder = const Border(
      left: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
      top: BorderSide(width: 6, color: Color.fromRGBO(36, 70, 39, 1)),
      right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
      bottom: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(96, 150, 87, 1),
                  border: defaultBorder,
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: StyledSearchBar(),
                  ),
                  const StyledTabController(),
                  const StyledPriceCardGrid()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}