// ignore_for_file: prefer_const_constructors

import 'package:breast_health_app/Screens/follow_up_qtns.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:breast_health_app/Widgets/selfcheck_widget.dart';
import 'package:flutter/material.dart';

class SelfCheckPageFive extends StatelessWidget {
  const SelfCheckPageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: SelfCheckWidget(
                    usedGif: Image.asset('assets/tenor.gif'),
                    selfHeading: 'Massage Time',
                    selfBody:
                        'Next, keep looking in the mirror and put one hand behind your head. Now place Five fingers to your breast and check for anything that strikes you as different or not your "noraml"',
                    buttonUsed: CustomButton(
                      buttonTitle: 'Finish',
                      navigationFunction: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => FollowUpQuestions()));
                      },
                    )))));
  }
}
