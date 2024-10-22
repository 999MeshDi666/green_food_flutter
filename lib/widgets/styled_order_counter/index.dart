import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_order_counter/styled_order_counter_button.dart';

class StyledOrderCounter extends StatefulWidget {
  const StyledOrderCounter({super.key, this.height = 45, this.width = 50});

  final double height;
  final double width;
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
      height: widget.height,
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
              width: widget.width,
              radiusRight: Radius.zero,
              onPressed: decreaseOrderCounter),
          Container(
              width: widget.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(233, 233, 233, 1),
                border: Border(
                  left: BorderSide(
                      width: 0.5, color: Color.fromRGBO(36, 70, 39, 1)),
                  right: BorderSide(
                      width: 0.5, color: Color.fromRGBO(36, 70, 39, 1)),
                ),
              ),
              child: Center(
                child: Text(
                  _orderCounter.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              )),
          StyledOrderCounterFilledButton(
              text: "+",
              width: widget.width,
              radiusLeft: Radius.zero,
              onPressed: increaseOrderCounter)
        ],
      ),
    );
  }
}
