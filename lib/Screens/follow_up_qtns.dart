// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/FollowUp/follow_up_input.dart';
import 'package:breast_health_app/Widgets/Survey/CheckBoxList.dart';
import 'package:breast_health_app/Widgets/Survey/CustomCard.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:flutter/material.dart';

class FollowUpQuestions extends StatefulWidget {
  FollowUpQuestions({Key? key}) : super(key: key);

  @override
  State<FollowUpQuestions> createState() => _FollowUpQuestionsState();
}

class _FollowUpQuestionsState extends State<FollowUpQuestions> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Follow up questions',
            style: kTitleCard,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomCard(
                  cardData:
                      'What did you feel/ see and what does it feel/ look like?',
                  children: [
                    FollowUpField(hintTexti: 'Type Response Here'),
                  ],
                ),
                CustomCard(
                  cardData: 'What did you feel/ see it',
                  children: [
                    FollowUpField(hintTexti: 'Type Response Here'),
                  ],
                ),
                CustomCard(
                  cardData: 'Is it in both breasts or just one?',
                  children: [
                    CheckBoxList(
                      children: [
                        'Both',
                        'Just one',
                      ],
                    ),
                  ],
                ),
                CustomCard(
                  cardData: 'Have you felt/seen this before?',
                  children: [
                    CheckBoxList(
                      children: [
                        'Yes',
                        'No',
                      ],
                    ),
                  ],
                ),
                SurveyButton(
                  buttonTitle: 'Submit',
                  navigationFunction: () {
                    Navigator.pushNamed(context, '/nextCheck');
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
