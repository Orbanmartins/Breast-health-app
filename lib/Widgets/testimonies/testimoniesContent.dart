// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class TestimoniesContent extends StatelessWidget {
  TestimoniesContent({
    required this.usedImage,
    required this.userTitle,
    required this.userBody,
  });
  final Image usedImage;
  final String userTitle;
  final String userBody;
  // final String readMore;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipOval(child: usedImage),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Heading area
                Text(
                  userTitle,
                  textAlign: TextAlign.left,
                   overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w500,
                    fontSize: smallTextSize,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                //The body area
                AutoSizeText(
                  userBody,
                  textAlign: TextAlign.left,
                  
                  // overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: kDetailContent
                ),
                SizedBox(
                  height: 4,
                ),
    
                Padding(
                  padding: const EdgeInsets.only(left:100.0),
                  child: Text(
                    'Read more',
                    // textAlign: TextAlign.right,
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.normal,
                      fontSize: smallTextSize,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
