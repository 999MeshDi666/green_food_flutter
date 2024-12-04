import 'package:flutter/material.dart';
import 'package:green_food/screens/orders/widgets/styled_delete_button.dart';
import 'package:green_food/widgets/styled_order_counter/index.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class StyledOrderListTile extends StatelessWidget {
  const StyledOrderListTile(
      {super.key, required this.orderedItem, required this.removeOrderedItem});
  final Map<String, dynamic> orderedItem;
  final VoidCallback removeOrderedItem;
  @override
  Widget build(BuildContext context) {
    return Slidable(
        key: ValueKey(orderedItem),
        endActionPane: ActionPane(
            motion: const BehindMotion(),
            extentRatio: 0.25,
            children: [
              StyledDeleteButton(
                removeOrderedItem: removeOrderedItem,
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
                    leading: Image.asset(orderedItem['imageUrl']),
                    title: Text(
                      orderedItem['title'],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      orderedItem['price'],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    trailing: FittedBox(
                      fit: BoxFit.fill,
                      child: StyledOrderCounter(
                        orderCounter: orderedItem['orderCount'],
                        height: 38,
                        width: 34,
                      ),
                    )),
              )),
        ));
    ;
  }
}
