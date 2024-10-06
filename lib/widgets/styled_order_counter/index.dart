import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_order_counter/styled_order_counter_filled_button.dart';

class StyledOrderCounter extends StatefulWidget {
  const StyledOrderCounter({super.key});

  @override
  State<StyledOrderCounter> createState() => _StyledOrderCounterState();
}

class _StyledOrderCounterState extends State<StyledOrderCounter> {
  int _orderCounter = 1;

  void increaseOrderCounter() {
    if (_orderCounter < 6) {
      setState(() {
        _orderCounter += 1;
      });
    }
  }

  void decreaseOrderCounter() {
    if (_orderCounter > 1) {
      setState(() {
        _orderCounter -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          border: const Border(
            left: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            top: BorderSide(width: 2, color: Color.fromRGBO(36, 70, 39, 1)),
            right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
            bottom: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          StyledOrderCounterFilledButton(
              text: "-",
              radiusRight: Radius.zero,
              onPressed: decreaseOrderCounter),
          Container(
              height: 50,
              width: 30,
              color: const Color.fromRGBO(233, 233, 233, 1),
              child: Center(
                child: Text(
                  _orderCounter.toString(),
                ),
              )),
          StyledOrderCounterFilledButton(
              text: "+",
              radiusLeft: Radius.zero,
              onPressed: increaseOrderCounter)
        ],
      ),
    );
  }
}
