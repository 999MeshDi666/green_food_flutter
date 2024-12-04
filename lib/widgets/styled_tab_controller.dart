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

List<String> tabs = ['All', 'Foods', 'Drinks', 'Snacks'];

class StyledTabController extends StatelessWidget {
  const StyledTabController({super.key, required this.setCurrentTab});
  final ValueChanged<String> setCurrentTab;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: TabBar(
          onTap: (value) => setCurrentTab(tabs[value].toLowerCase()),
          labelPadding: EdgeInsets.zero,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          tabs: tabs.map((tab) {
            return StyledTab(tabText: tab);
          }).toList()),
    );
  }
}
