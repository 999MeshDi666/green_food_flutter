import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_order_counter_filled_button.dart';

class StyledOrderCounter extends StatefulWidget {
  const StyledOrderCounter({super.key});

  @override
  State<StyledOrderCounter> createState() => _StyledOrderCounterState();
}

class _StyledOrderCounterState extends State<StyledOrderCounter> {
  int _orderCounter = 0;

  void increaseOrderCounter() {
    if (_orderCounter < 6) {
      setState(() {
        _orderCounter += 1;
      });
    }
  }

  void decreaseOrderCounter() {
    if (_orderCounter > 0) {
      setState(() {
        _orderCounter -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StyledOrderCounterFilledButton(
            text: "-", onPressed: decreaseOrderCounter),
        Text(_orderCounter.toString()),
        StyledOrderCounterFilledButton(
            text: "+", onPressed: increaseOrderCounter)
      ],
    );
  }
}
