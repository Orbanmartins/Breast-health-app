// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/Articles/account_view.dart';
import 'package:breast_health_app/Screens/Articles/favorite_view.dart';
import 'package:breast_health_app/Screens/Articles/education_centre.dart';
import 'package:breast_health_app/Screens/Articles/search_view.dart';
import 'package:breast_health_app/Screens/home_screen.dart';
import 'package:breast_health_app/Screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _bottomNavView = [
    HomeScreeen(),
    EducationCentre(),
    SearchView(),
    ScheduleCalendar(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: _navBarList
            .map(
              (e) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  e.icon,
                  width: 24.0,
                ),
                activeIcon: SvgPicture.asset(
                  e.activeIcon,
                  width: 24.0,
                ),
                title: Text(e.title),
              ),
            )
            .toList(),
      ),
    );
  }
}

class NavBarItem {
  final String icon;
  final String activeIcon;
  final String title;
  NavBarItem(
      {required this.icon, required this.activeIcon, required this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: "assets/home.svg",
    activeIcon: "assets/home_2.svg",
    title: "Home",
  ),
  NavBarItem(
    icon: "assets/search.svg",
    activeIcon: "assets/search_2.svg",
    title: "Search",
  ),
  NavBarItem(
    icon: "assets/favorite.svg",
    activeIcon: "assets/favorite_2.svg",
    title: "Favorite",
  ),
  NavBarItem(
    icon: "assets/account.svg",
    activeIcon: "assets/account_2.svg",
    title: "Account",
  ),
];
