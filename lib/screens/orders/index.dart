import 'package:flutter/material.dart';
import 'package:green_food/screens/orders/widgets/styled_delete_button.dart';
import 'package:green_food/widgets/styled_button.dart';
import 'package:green_food/widgets/styled_order_counter/index.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  late final _controller = SlidableController(this);

  List<Map<String, dynamic>> orderList = [
    {
      'title': 'Apple Juice',
      'price': '\$5.00',
      'orderCount': 2,
      'subtitle':
          'Enjoy a refreshing sip of fresh apple juice, perfect for quenching your thirst on a sunny day. Crisp, sweet, and delicious, it brings the orchard to your glass with every taste.',
      'type': "drinks",
      'imageUrl': 'assets/images/apple_juice.png',
    },
    {
      'title': 'Water',
      'price': '\$3.20',
      'orderCount': 1,
      'subtitle':
          'A bottle of pure, crisp water that rehydrates and refreshes. Essential for every moment, this water is the ultimate thirst quencher, providing a clean and invigorating experience with every sip.',
      'type': "drinks",
      'imageUrl': 'assets/images/bottle_of_water.png',
    },
    {
      'title': 'Burger №1',
      'price': '\$6.80',
      'orderCount': 3,
      'subtitle':
          'This delicious burger takes you on a journey to the sea, with every bite offering the calm and serenity of coastal breezes. A perfect fusion of flavors that evokes a seaside escape.',
      'type': "foods",
      'imageUrl': 'assets/images/burger1.png',
    },
    {
      'title': 'Burger №2',
      'price': '\$8.20',
      'orderCount': 4,
      'subtitle':
          'Discover a rich, adventurous taste with this burger, as it brings the mystery and beauty of the desert to your plate. Each bite captures the essence of untamed wilderness.',
      'type': "foods",
      'imageUrl': 'assets/images/burger2.png',
    },
    {
      'title': 'Coffee',
      'price': '\$5.20',
      'orderCount': 6,
      'subtitle':
          'Immerse yourself in a world of deep, rich aromas with this coffee. Each sip transports you to a lush green forest, where the earthiness of the beans creates a warm, inviting experience.',
      'type': "drinks",
      'imageUrl': 'assets/images/coffee.png',
    },
    {
      'title': 'Peanuts',
      'price': '\$1.50',
      'orderCount': 4,
      'subtitle':
          'Crunchy and full of flavor, these peanuts take you on a wild adventure with their bold taste and satisfying texture. A perfect snack for any occasion, they’re packed with energy and fun.',
      'type': "snacks",
      'imageUrl': 'assets/images/peanuts.png',
    },
    {
      'title': 'Cola',
      'price': '\$3.90',
      'orderCount': 1,
      'subtitle':
          'Dive into the bold and refreshing taste of cola, a drink that celebrates rich cultural moments and brings a wave of fizzy excitement. Perfect for any occasion where you need to refresh and recharge.',
      'type': "drinks",
      'imageUrl': 'assets/images/cola.png',
    },
    {
      'title': 'Hotdog',
      'price': '\$4.00',
      'orderCount': 2,
      'subtitle':
          'A classic hotdog that challenges your taste buds like the highest snowy mountains. Bold, flavorful, and hearty, this hotdog is perfect for anyone craving a delicious, satisfying meal on the go.',
      'type': "foods",
      'imageUrl': 'assets/images/hotdog.png',
    },
    {
      'title': 'Ice Cream',
      'price': '\$3.10',
      'orderCount': 1,
      'subtitle':
          'Cool down with a creamy and indulgent ice cream that takes your taste buds on a wild adventure. Every spoonful is a treat, perfect for those hot summer days when you need a sweet escape.',
      'type': "snacks",
      'imageUrl': 'assets/images/ice_cream.png',
    },
    {
      'title': 'Noodles',
      'price': '\$10.00',
      'orderCount': 5,
      'subtitle':
          'Relax and unwind with these noodles, which bring the peacefulness of rural landscapes to your plate. Soft, flavorful, and comforting, they’re a meal that evokes serenity with every bite.',
      'type': "foods",
      'imageUrl': 'assets/images/noodles.png',
    },
    {
      'title': 'Milk',
      'price': '\$6.50',
      'orderCount': 5,
      'subtitle':
          'Rich and creamy, this milk brings you on a flavor journey through wild, untamed landscapes. A nourishing drink that adds vitality and freshness to your day, every glass offers pure satisfaction.',
      'type': "drinks",
      'imageUrl': 'assets/images/milk.png',
    },
    {
      'title': 'Nachos',
      'price': '\$2.50',
      'orderCount': 2,
      'subtitle':
          'These crispy nachos are packed with flavor and ready to take you on a wild culinary adventure. Loaded with crunchy goodness, they’re perfect for snacking at any time of day.',
      'type': "snacks",
      'imageUrl': 'assets/images/nachos.png',
    },
  ];

  void removeOrderedItem(int index) {
    setState(() {
      orderList.removeAt(index);
    });
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orders"),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
          padding: const EdgeInsets.only(bottom: 40, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: orderList.length,
                  itemBuilder: (context, index) {
                    final item = orderList[index];
                    return Slidable(
                        key: ValueKey(item),
                        endActionPane: ActionPane(
                            motion: const BehindMotion(),
                            extentRatio: 0.25,
                            children: [
                              StyledDeleteButton(
                                removeOrderedItem: () {
                                  removeOrderedItem(index);
                                },
                              )
                            ]),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          height: 120,
                          child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              color: const Color.fromRGBO(96, 150, 87, 1),
                              child: Center(
                                child: ListTile(
                                    leading: Image.asset(item['imageUrl']),
                                    title: Text(
                                      item['title'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      item['price'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: FittedBox(
                                      fit: BoxFit.fill,
                                      child: StyledOrderCounter(
                                        orderCounter: item['orderCount'],
                                        height: 38,
                                        width: 34,
                                      ),
                                    )),
                              )),
                        ));
                  },
                ),
              ),
              StyledFilledButton(title: "Complete Order", onPressed: () => {}),
            ],
          ),
        ));
  }
}
