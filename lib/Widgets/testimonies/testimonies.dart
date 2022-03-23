
// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TestimoniesCard extends StatelessWidget {
 TestimoniesCard({ required this.cardChild, required this.navigationFunction});
 final Widget cardChild;
 final VoidCallback navigationFunction;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.symmetric(vertical:5,horizontal: 10),
        height:150,
        width: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow:kElevationToShadow[3],),
      // height: 20,
      // width: 30.w,
      child: InkWell(
        //  borderRadius: BorderRadius.circular(28),
    onTap:navigationFunction,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: cardChild,
        ),
      ),
    );  
  }
}