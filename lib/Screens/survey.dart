// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/Articles/bottomNav.dart';
import 'package:breast_health_app/Widgets/Survey/CheckBoxList.dart';
import 'package:breast_health_app/Widgets/Survey/CustomCard.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:flutter/material.dart';

class QuestionnaireSurvey extends StatefulWidget {
  QuestionnaireSurvey({Key? key}) : super(key: key);

  @override
  State<QuestionnaireSurvey> createState() => _QuestionnaireSurveyState();
}

class _QuestionnaireSurveyState extends State<QuestionnaireSurvey> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomCard(
            cardData: 'Please select your age',
            children: [
              Slider(
                min: 0.0,
                max: 100.0,
                activeColor: mainColor,
                inactiveColor: greyColor,
                thumbColor: Colors.pink,
                divisions: 100,
                value: _currentSliderValue,
                label: '$_currentSliderValue',
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              )
            ],
          ),
          CustomCard(
            cardData: 'What is your level of Education?',
            children: [
              CheckBoxList(
                children: [
                  'Primary',
                  'O\'Level',
                  'A\'Level',
                  'Tertiary',
                  'University'
                ],
              ),
            ],
          ),
          CustomCard(
            cardData: 'Do you know anyone close to you who had cancer',
            children: [
              CheckBoxList(
                children: [
                  'Yes',
                  'No',
                ],
              ),
            ],
          ),
          CustomCard(
            cardData: 'What is your motivation for using the application',
            children: [
              CheckBoxList(
                children: [
                  'Research',
                  'Breast health',
                  'News about breast health',
                  'Other'
                ],
              ),
            ],
          ),
          SurveyButton(
            buttonTitle: 'Submit',
            navigationFunction: () {
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => BottomNav()));

            //  Navigator.pushNamed(context, '/bottomNavbar');
            },
          )
        ],
      ),
    )));
  }
}
