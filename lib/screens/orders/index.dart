import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/widgets/styled_order_counter/index.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

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
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Dismissible(
                        key: Key(index.toString()),
                        child: SizedBox(
                          height: 110,
                          child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              color: const Color.fromRGBO(96, 150, 87, 1),
                              child: Center(
                                child: ListTile(
                                  leading: Image.asset(
                                      'assets/images/apple_juice.png'),
                                  title: const Text(
                                    'Apple Juice',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: const Text(
                                    "Price: \$5.00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
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
