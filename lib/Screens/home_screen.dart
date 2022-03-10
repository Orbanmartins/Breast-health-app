// ignore_for_file: prefer_const_constructors

import 'package:breast_health_app/Widgets/homeScreen/userCard.dart';
import 'package:breast_health_app/Widgets/homeScreen/userCardContent.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatefulWidget {
  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wampetics meas'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            crossAxisCount: 2,
            children: <Widget>[
              Expanded(
                child: UserCard(
                    navigationFunction: () {
                      Navigator.pushNamed(context, '/individualcards');
                    },
                    cardChild: UserCardContent(
                        userIcon: Icons.person, userLabel: 'BREAST SELF EXAM')),
              ),
              Expanded(
                child: UserCard(
                    navigationFunction: () {
                      Navigator.pushNamed(context, '/individualcards');
                    },
                    cardChild: UserCardContent(
                        userIcon: Icons.account_balance, userLabel: 'KNOWLEDGE CENTRE')),
              ),
                    Expanded(
                child: UserCard(
                    navigationFunction: () {
                      Navigator.pushNamed(context, '/individualcards');
                    },
                    cardChild: UserCardContent(
                        userIcon: Icons.person, userLabel: 'HEALTH DATA')),
              ),
              Expanded(
                child: UserCard(
                    navigationFunction: () {
                      Navigator.pushNamed(context, '/individualcards');
                    },
                    cardChild: UserCardContent(
                        userIcon: Icons.calendar_today, userLabel: 'APPOINTMENTS')),
              ),



              
            ],
          )),
    );
  }
}
