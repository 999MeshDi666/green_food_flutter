import 'package:flutter/material.dart';
import 'package:green_food/screens/details/index.dart';

class StyledPriceCard extends StatelessWidget {
  const StyledPriceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.type,
    required this.imageUrl,
  });

  final String title;
  final String subtitle;
  final String price;

  final String type;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    void onNavigate() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(
                    title: title,
                    subtitle: subtitle,
                    price: price,
                    imageUrl: imageUrl,
                  )));
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: const Alignment(0, 0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: 140,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Price: $price',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              onPressed: onNavigate,
                              style: ElevatedButton.styleFrom(
                                overlayColor: WidgetStateColor.resolveWith(
                                    (states) => Colors.white),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                backgroundColor:
                                    const Color.fromRGBO(65, 112, 67, 1),
                              ),
                              child: const Text(
                                'ORDER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 0,
          right: 0,
          child: Image.asset(
            imageUrl,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}
