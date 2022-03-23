// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/Faqs.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckFive.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckFour.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckThree.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckTwo.dart';
import 'package:breast_health_app/Screens/self_check.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class SelfCheckSlider extends StatefulWidget {
  SelfCheckSlider({Key? key}) : super(key: key);

  @override
  State<SelfCheckSlider> createState() => _SelfCheckSliderState();
}

class _SelfCheckSliderState extends State<SelfCheckSlider> {
  int _selectedIndex = 0;

  late final List<Widget> _pages = <Widget>[
    SelfCheckPage(),
    SelfCheckPageTwo(),
    SelfCheckPageThree(),
    SelfCheckPageFour(),
    SelfCheckPageFive(),
  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30),
          child: _buildStepIndicator(),
        ),
        _buildPageView(),
      ],
    );
  }

  _buildPageView() {
    return Expanded(
      child: PageView.builder(
        itemCount: 8,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: _pages.elementAt(_selectedIndex));
        },
        onPageChanged: (int index) {
          _currentPageNotifier.value = index;
        },
      ),
    );
  }

  _buildStepIndicator() {
    return Container(
      color: mainColor,
      padding: const EdgeInsets.all(16.0),
      child: StepPageIndicator(
        stepColor: Colors.white,
        itemCount: 5,
        currentPageNotifier: _currentPageNotifier,
        size: 16,
        onPageSelected: (int index) {
          if (_currentPageNotifier.value > index)
            _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
