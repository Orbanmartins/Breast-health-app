// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  UserCard({required this.cardChild, required this.navigationFunction});
  final Widget cardChild;
  final VoidCallback navigationFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: kElevationToShadow[1],
      ),
      child: InkResponse(
        containedInkWell: true,
        splashFactory: InkRipple.splashFactory,
        splashColor: Colors.black12,
        highlightColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        onTap: navigationFunction,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: cardChild,
        ),
      ),
    );
  }
}
