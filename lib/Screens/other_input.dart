// ignore_for_file: must_be_immutable

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {

  String hintText;

  CustomFormField({Key? key, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          color: grayshade.withOpacity(0.5),
          // border: Border.all(
          //   width: 1,
          // ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: TextField(
               decoration: InputDecoration(
                              hintText: hintText,
                               border: InputBorder.none,
                            ),
            
          ),
        )
        //IntrinsicHeight

        );
  }
}