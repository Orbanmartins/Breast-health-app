// ignore_for_file: prefer_const_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/Design/design_Clipper.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: MediaQuery.of(context).size.height * .30,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: mainColor,
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    DesignHeading(containerHeading: 'dddddd',),
           
                  ],
                )
                //
                ),
          ),
        ),
      ],
    );
  }
}

class DesignHeading extends StatelessWidget {
  const DesignHeading({
    required this.containerHeading
  }) ;
  final String containerHeading;

  @override
  Widget build(BuildContext context) {
    return Text(containerHeading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: kBodyTextStyle);
  }
}
