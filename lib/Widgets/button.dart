// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonTitle, required this.navigationFunction});
  final String buttonTitle;
  final VoidCallback navigationFunction;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigationFunction,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow:kElevationToShadow[2],
            color: mainColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: whiteshade),
          ),
        ),
      ),
    );
  }
}


class SurveyButton extends StatelessWidget {
  SurveyButton({required this.buttonTitle, required this.navigationFunction});
  final String buttonTitle;
  final VoidCallback navigationFunction;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigationFunction,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          boxShadow:kElevationToShadow[2],
            color: mainColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: whiteshade),
          ),
        ),
      ),
    );
  }
}
