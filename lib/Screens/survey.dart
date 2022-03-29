// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Constants/mathConstants.dart';
import 'package:breast_health_app/Screens/Articles/bottomNav.dart';
import 'dart:convert';
import 'package:breast_health_app/Widgets/Survey/CheckBoxList.dart';
import 'package:breast_health_app/Widgets/Survey/CustomCard.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:breast_health_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuestionnaireSurvey extends StatefulWidget {
  QuestionnaireSurvey({Key? key}) : super(key: key);

  @override
  State<QuestionnaireSurvey> createState() => _QuestionnaireSurveyState();
}

class _QuestionnaireSurveyState extends State<QuestionnaireSurvey> {
  var width;
  var height;
  double _currentSliderValue = 20;
  final List<dynamic> _qns = [];

  @override
  void initState() {
    super.initState();
    getSurvey();
  }

  getSurvey() async {
    final response = await http.get(Uri.parse(surveyUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      List data = responseData['surveyQns'];
      var faqs = data.forEach((qn) {
        final Questions qns = Questions(title: qn['question_title'], surveyAns: []);
        setState(() {
          _qns.add(qns);
        });

      });
    } else {
      throw Exception('Failed to fetch survey questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
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
            cardData: _qns[0].title,
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
            ]
            ),
          
          CustomCard(
            cardData: _qns[1].title,
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
            cardData: _qns[2].title,
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
