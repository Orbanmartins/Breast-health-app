// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/homeScreen/userCard.dart';
import 'package:breast_health_app/Widgets/homeScreen/userCardContent.dart';
import 'package:breast_health_app/Widgets/testimonies/testimonies.dart';
import 'package:breast_health_app/Widgets/testimonies/testimoniesContent.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}


class _HomeScreeenState extends State<HomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('Home screen'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                crossAxisCount: 2,
                children: <Widget>[
                  UserCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/selfCheck');
                      },
                      cardChild: UserCardContent(
                          userIcon: Icons.person,
                          userLabel: 'BREAST SELF EXAM')),
                  UserCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/knoweledgeCentreCards');
                      },
                      cardChild: UserCardContent(
                          userIcon: Icons.account_balance,
                          userLabel: 'KNOWLEDGE CENTRE')),
                          //I have replaced this uploadHealthData with the cards thing
                  UserCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/uploadHealthData');
                      },
                      cardChild: UserCardContent(
                          userIcon: Icons.person, userLabel: 'HEALTH DATA')),
                  UserCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/nextCheck');
                      },
                      cardChild: UserCardContent(
                          userIcon: Icons.calendar_today,
                          userLabel: 'APPOINTMENTS')),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'TESTIMONIES',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                TestimoniesCard(
                  cardChild: TestimoniesContent(
                    usedImage: Image.asset(
                      "assets/pics.jpg",
                      fit: BoxFit.fill,
                      width: 60,
                      height: 60,
                    ),
                    userTitle: 'Ruth Kalimbala',
                    userBody:
                        'When an unknown printer took \na galley of type ',
                  ),
                  navigationFunction: () {
                    Navigator.pushNamed(context, '/uploadHealthData');
                  },
                ),
                TestimoniesCard(
                  cardChild: TestimoniesContent(
                    usedImage: Image.asset(
                      "assets/pics.jpg",
                      fit: BoxFit.fill,
                      width: 60,
                      height: 60,
                    ),
                    userTitle: 'Dorothy Asiimwe',
                    userBody:
                        'I had breast cancer when and I\ndid not know what to do  ',
                  ),
                  navigationFunction: () {
                    Navigator.pushNamed(context, '/uploadHealthData');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
