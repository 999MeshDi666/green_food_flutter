import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_price_card_grid/index.dart';
import 'package:green_food/widgets/styled_search_bar.dart';
import 'package:green_food/widgets/styled_tab_controller.dart';

List<Map<String, String>> catalogList = [
  {
    'title': 'Apple Juice',
    'price': '\$5.00',
    'subtitle': 'Fresh apple juice',
    'type': "drinks",
    'imageUrl': 'assets/images/apple_juice.png',
  },
  {
    'title': 'Water',
    'price': '\$3.20',
    'subtitle': 'Bottle of water',
    'type': "drinks",
    'imageUrl': 'assets/images/bottle_of_water.png',
  },
  {
    'title': 'Burger #1',
    'price': '\$6.80',
    'subtitle': 'Feel the serenity of the sea',
    'type': "foods",
    'imageUrl': 'assets/images/burger1.png',
  },
  {
    'title': 'Burger #2',
    'price': '\$8.20',
    'subtitle': 'Discover the hidden beauty of the desert',
    'type': "foods",
    'imageUrl': 'assets/images/burger2.png',
  },
  {
    'title': 'Coffee',
    'price': '\$5.20',
    'subtitle': 'Immerse yourself in lush greenery',
    'type': "drinks",
    'imageUrl': 'assets/images/coffee.png',
  },
  {
    'title': 'Peanuts',
    'price': '\$1.50',
    'subtitle': 'Embark on a wild adventure',
    'type': "snacks",
    'imageUrl': 'assets/images/peanuts.png',
  },
  {
    'title': 'Cola',
    'price': '\$3.90',
    'subtitle': 'Delve into rich cultural experiences',
    'type': "drinks",
    'imageUrl': 'assets/images/cola.png',
  },
  {
    'title': 'Hotdog',
    'price': '\$4.00',
    'subtitle': 'Challenge the highest snowy mountains',
    'type': "foods",
    'imageUrl': 'assets/images/hotdog.png',
  },
  {
    'title': 'Ice Cream',
    'price': '\$3.10',
    'subtitle': 'Embark on a wild adventure',
    'type': "snacks",
    'imageUrl': 'assets/images/ice_cream.png',
  },
  {
    'title': 'Noodles',
    'price': '\$10.00',
    'subtitle': 'Relax in peaceful rural landscapes',
    'type': "foods",
    'imageUrl': 'assets/images/noodles.png',
  },
  {
    'title': 'Milk',
    'price': '\$6.50',
    'subtitle': 'Embark on a wild adventure',
    'type': "drinks",
    'imageUrl': 'assets/images/milk.png',
  },
  {
    'title': 'Nachos',
    'price': '\$2.50',
    'subtitle': 'Embark on a wild adventure',
    'type': "snacks",
    'imageUrl': 'assets/images/nachos.png',
  },
];

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  String currentTab = 'all';

  void setCurrentTab(String tab) {
    setState(() {
      currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredCatalogList = currentTab != "all"
        ? catalogList.where((item) => item['type'] == currentTab).toList()
        : catalogList;

    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const StyledSearchBar(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: StyledTabController(setCurrentTab: setCurrentTab),
          ),
          SizedBox(
              child: StyledPriceCardGrid(
                  cardList: filteredCatalogList, height: 650))
        ],
      ),
    ));
  }
}
