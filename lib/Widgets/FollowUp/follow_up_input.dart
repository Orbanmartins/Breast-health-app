// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class FollowUpField extends StatelessWidget {
  final String hintTexti;

  FollowUpField({Key? key, required this.hintTexti,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10,
          ),
        ),
        Container(
          // height: 60,
            decoration: BoxDecoration(
              color: cameraColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: hintTexti,
                  border: InputBorder.none,
                ),
              ),
            )
            //IntrinsicHeight

            ),
      ],
    );
  }
}


///password
