import 'package:flutter/material.dart';
import 'package:green_food/screens/orders/index.dart';
import 'package:green_food/widgets/styled_button.dart';
import 'package:green_food/widgets/styled_order_counter/index.dart';
import 'package:green_food/widgets/styled_headline.dart';
import 'package:green_food/widgets/styled_image_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatelessWidget {
  const Details(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.imageUrl});

  final String title;
  final String subtitle;
  final String price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Orders()));
                },
                icon: const FaIcon(
                  FontAwesomeIcons.basketShopping,
                  size: 25,
                )),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledImageCard(
                imageUrl: imageUrl,
              ),
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          StyledHeadline(
                            text: title,
                            fontSize: 42,
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            subtitle,
                            softWrap: true,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )),
                      Row(
                        children: [
                          StyledHeadline(
                            text: 'Price: $price',
                            fontSize: 24,
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const StyledOrderCounter(),
                  StyledFilledButton(title: "Add To Order", onPressed: () {})
                ],
              ))
        ],
      ),
    );
  }
}
