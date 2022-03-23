// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class SelfCheckWidget extends StatelessWidget {
  SelfCheckWidget({
    required this.usedGif,
    required this.selfHeading,
    required this.selfBody,
    required this.buttonUsed,
  });
  final Image usedGif;
  final String selfHeading;
  final String selfBody;
  final Widget buttonUsed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        usedGif,
        ClipPath(
          clipper:
              DirectionalWaveClipper(verticalPosition: VerticalPosition.TOP),
          child: Container(
            height: 330,
            color: mainColor,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
              child: Column(
                children: [
                  Text(
                    selfHeading,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    selfBody,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: buttonUsed),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


/**
 * 
 * class SelfCheckWidget extends StatelessWidget {
  const SelfCheckWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Image.asset('assets/tenor.gif'),
        ClipPath(
          clipper:
              DirectionalWaveClipper(verticalPosition: VerticalPosition.TOP),
          child: Container(
            height: 330,
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: mainColor,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
              child: Column(
                children: [
                  Text(
                    'Massage Time',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Spend some time looking at yourself in the mirror. Put your breasts in the  mirror. Put your hands over your head and then on your hips. Move your body so you see every part of your breasts, don\'nt forget your side and under boob',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: CustomButton(
                      buttonTitle: 'Next',
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/homeScreen');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

 * 
 * 
 * 
 */