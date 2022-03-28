// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/selfCheck/self_check_five.dart';
import 'package:breast_health_app/Screens/selfCheck/self_check_four.dart';
import 'package:breast_health_app/Screens/selfCheck/self_check_three.dart';
import 'package:breast_health_app/Screens/selfCheck/self_check_one.dart';
import 'package:breast_health_app/Screens/self_check.dart';
import 'package:flutter/material.dart';

class SelfCheckSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
           
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: mainColor,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                  tabs: const [
                    Tab(text: "Step One"),
                    Tab(text: "Step Two"),
                    Tab(text: "Step Three"),
                    Tab(text: "Step Four"),
                    Tab(text: "Step Five"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: const [
              SelfCheckPage(),
              SelfCheckPageTwo(),
              SelfCheckPageThree(),
              SelfCheckPageFour(),
              SelfCheckPageFive(),
            ],
          ),
        ),
      ),
    );
  }
}



// class SelfCheckSlider extends StatefulWidget {
//   SelfCheckSlider({Key? key}) : super(key: key);

//   @override
//   State<SelfCheckSlider> createState() => _SelfCheckSliderState();
// }

// class _SelfCheckSliderState extends State<SelfCheckSlider> {
//   int _selectedIndex = 0;

//   late final List<Widget> _pages = <Widget>[
//     SelfCheckPage(),
//     SelfCheckPageTwo(),
//     SelfCheckPageThree(),
//     SelfCheckPageFour(),
//     SelfCheckPageFive(),
//   ];
//   final _pageController = PageController();
//   final _currentPageNotifier = ValueNotifier<int>(0);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildBody(),
//     );
//   }

//   _buildBody() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Container(
//           margin: EdgeInsets.only(top: 30),
//           child: _buildStepIndicator(),
//         ),
//         _buildPageView(),
//       ],
//     );
//   }

//   _buildPageView() {
//     return Expanded(
//       child: PageView.builder(
//         itemCount: 8,
//         controller: _pageController,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(child: _pages.elementAt(_selectedIndex));
//         },
//         onPageChanged: (int index) {
//           _currentPageNotifier.value = index;
//         },
//       ),
//     );
//   }

//   _buildStepIndicator() {
//     return Container(
//       color: mainColor,
//       padding: const EdgeInsets.all(16.0),
//       child: StepPageIndicator(
//         stepColor: Colors.white,
//         itemCount: 5,
//         currentPageNotifier: _currentPageNotifier,
//         size: 16,
//         onPageSelected: (int index) {
//           if (_currentPageNotifier.value > index)
//             _pageController.jumpToPage(index);
//         },
//       ),
//     );
//   }
// }
