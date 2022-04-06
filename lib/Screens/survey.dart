// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Constants/mathConstants.dart';
import 'package:breast_health_app/Screens/Articles/bottomNav.dart';
import 'package:breast_health_app/Widgets/Design/header_clipper.dart';
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
  var width;
  var height;
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Positioned(
          top: 0,
          child: ClipPath(
            clipper: HeaderClipper(82),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: mainColor,
                height: size.height * 0.325,
                width: size.width,
                child: AppBar(
                  elevation: 0.0,
                  backgroundColor: mainColor,
                  title: const Text('Survey',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  centerTitle: true,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                ),   
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => BottomNav()));
        
                    //  Navigator.pushNamed(context, '/bottomNavbar');
                  },
                )
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
