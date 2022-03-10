// ignore_for_file: use_key_in_widget_constructors


import 'package:breast_health_app/Screens/example_three.dart';
import 'package:breast_health_app/Screens/example_two.dart';
import 'package:breast_health_app/Widgets/nav_bar.dart';
import 'package:breast_health_app/Widgets/navigation_bar_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBar createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int _selectedScreenIndex = 0;

  late final List<Widget> _screens = [
    ExamplePage(),
    ExamplePageTwo(),
    ExampleThree(),

  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: SingleChildScrollView(
              child: _screens[_selectedScreenIndex],
            ),
          ),
          Container(
            height: 74,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavBarIcon(
                      icon: Icons.add_location,
                      inactiveIcon: Icons.add_location,
                      label: "Location",
                      labelOnActive: true,
                      darkMode: false,
                      active: (_selectedScreenIndex == 0),
                      onClick: () => _selectScreen(0),
                    ),
                    NavBarIcon(
                      icon: Icons.chat_rounded,
                      inactiveIcon: Icons.chat_rounded,
                      label: "Chat",
                      labelOnActive: true,
                      darkMode: false,
                      active: (_selectedScreenIndex == 1),
                      onClick: () => _selectScreen(1),
                    ),
                    NavBarIcon(
                      icon: Icons.question_answer,
                      inactiveIcon: Icons.question_answer,
                      label: "FAQS",
                      labelOnActive: true,
                      darkMode: false,
                      active: (_selectedScreenIndex == 2),
                      onClick: () => _selectScreen(2),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
