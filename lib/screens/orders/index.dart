import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_filled_button.dart';
import 'package:green_food/widgets/styled_order_counter/index.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
                    return Slidable(
                        endActionPane: ActionPane(
                            extentRatio: 0.25,
                            motion: const BehindMotion(),
                            dismissible: DismissiblePane(onDismissed: () {}),
                            children: [
                              const Spacer(),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: 75,
                                      height: 106,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: SlidableAction(
                                        onPressed: (context) {
                                          print("delete");
                                        },
                                        backgroundColor:
                                            Color.fromRGBO(144, 39, 33, 1),
                                        foregroundColor: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        icon: Icons.delete,
                                      )))
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
                                    trailing: const FittedBox(
                                      fit: BoxFit.fill,
                                      child: StyledOrderCounter(
                                        height: 40,
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
