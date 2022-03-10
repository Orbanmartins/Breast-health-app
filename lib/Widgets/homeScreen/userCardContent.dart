// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class UserCardContent extends StatelessWidget {
UserCardContent({required this.userIcon, required this.userLabel    });
final IconData userIcon;
final String userLabel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    userIcon,
                    color: mainColor,
                    size: 60.0,
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Text(
                     userLabel,
                       textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[800]
                          ,
                          fontWeight: FontWeight.bold,
                          fontSize:18,),
                    ),
                  ),
                ],
              ),
    );
  }
}
