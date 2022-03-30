// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({this.children, this.cardData});

  final children;
  final cardData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  cardData,
                  // minFontSize: 18,
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: bodyTextSize,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
