import 'package:flutter/material.dart';

class TestimoniesCard extends StatelessWidget {
 TestimoniesCard({ required this.buttonTitle, required this.navigationFunction});
 final String buttonTitle;
 final VoidCallback navigationFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow:kElevationToShadow[3],),
      // height: 20,
      // width: 30.w,
      child: InkWell(
        //  borderRadius: BorderRadius.circular(28),
    onTap:navigationFunction,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(buttonTitle,style: TextStyle(fontSize: 12),),
        ),
      ),
    );  
  }
}