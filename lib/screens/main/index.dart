import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_main_card_contaner.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: const Column(
        children: [
          Padding(padding: EdgeInsets.all(15), child: StyledMainCardContainer())
        ],
      ),
    );
  }
}
