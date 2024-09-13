import 'package:flutter/material.dart';

class StyledTab extends StatelessWidget {
  const StyledTab({
    super.key,
    required this.tabText,
  });
  final String tabText;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        tabText,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class StyledTabController extends StatelessWidget {
  const StyledTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: TabBar(
          labelPadding: EdgeInsets.zero,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          tabs: <Widget>[
            StyledTab(tabText: "All"),
            StyledTab(tabText: "Foods"),
            StyledTab(tabText: "Drinks"),
            StyledTab(tabText: "Snacks"),
          ]),
    );
  }
}
