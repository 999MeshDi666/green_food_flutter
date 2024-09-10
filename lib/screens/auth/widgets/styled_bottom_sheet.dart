import 'package:flutter/material.dart';
import 'package:green_food/widgets/styled_headline.dart';

Border defaultBorder = const Border(
  left: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
  top: BorderSide(width: 4, color: Color.fromRGBO(36, 70, 39, 1)),
  right: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
  bottom: BorderSide(width: 1, color: Color.fromRGBO(36, 70, 39, 1)),
);

class StyledBottomSheet extends StatelessWidget {
  const StyledBottomSheet(
      {super.key, required this.childWidget, required this.headlineText});
  final Widget childWidget;
  final String headlineText;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 40),
        decoration: BoxDecoration(
            border: defaultBorder,
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(65, 112, 67, 1),
                              border: defaultBorder,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: const Icon(Icons.close)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 28),
                      child: StyledHeadline(
                        text: headlineText,
                      ),
                    )),
                    childWidget,
                  ],
                ),
              ]),
        ));
  }
}
