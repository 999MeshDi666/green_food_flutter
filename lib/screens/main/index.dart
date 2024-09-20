import 'package:flutter/material.dart';
import 'package:green_food/screens/main/widgets/styled_main_card_container.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_food/widgets/icons/icons.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    Border defaultBorder = const Border(
      top: BorderSide(width: 2, color: Color.fromRGBO(36, 70, 39, 1)),
      right: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
      bottom: BorderSide(width: 2, color: Color.fromRGBO(36, 70, 39, 1)),
    );
    BorderRadius defaultBorderRadius = const BorderRadius.only(
        topRight: Radius.circular(25), bottomRight: Radius.circular(25));

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 280,
                height: 120,
                margin: const EdgeInsets.only(top: 60, bottom: 30),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(96, 150, 87, 1),
                    border: defaultBorder,
                    borderRadius: defaultBorderRadius),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      // decoration: BoxDecoration(
                      //     color: const Color.fromRGBO(96, 150, 87, 1),
                      //     border: Border.all(
                      //         width: 1,
                      //         color: const Color.fromRGBO(36, 70, 39, 1)),
                      //     borderRadius: BorderRadius.circular(50)),
                      child: SvgPicture.string(user),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hi, Username",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Green food enjoyer",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(height: 600, child: StyledMainCardContainer()),
          ),
        ],
      ),
    );
  }
}
