// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class KnowledgeCentreCard extends StatelessWidget {
  KnowledgeCentreCard({
    required this.navigationFunction,
    required this.iconUsed,
    required this.cardLabel,
  });

  final VoidCallback navigationFunction;
  final IconData iconUsed;
  final String cardLabel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigationFunction,
      child: Container(
        height: 70,
        margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: kElevationToShadow[2],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              iconUsed,
              size: 28,
              color: mainColor,
            ),
            title: Text(cardLabel,
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 19,
                    fontWeight: FontWeight.w400)),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}


