// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/KnowlegeCentre/knowledge_centre_cards.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';


class KnoweledgeCentreCards extends StatefulWidget {
  const KnoweledgeCentreCards({Key? key}) : super(key: key);

  @override
  KnoweledgeCentreCardsState createState() => KnoweledgeCentreCardsState();
}

class KnoweledgeCentreCardsState extends State<KnoweledgeCentreCards> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
      
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        primary: false,
        // physics: NeverScrollableScrollPhysics(),
        //physics: ClampingScrollPhysics(),
        // height: height,
        // width: width,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: height * 0.324, //300,
                  color: Colors.white,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: height * 0.22, //250,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.only(
                            // bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(45))),
                    
                  ),
                ),
                Positioned(
                  bottom: 0,
                  // left: width * 0.01, // 30,
                  right: width * 0.01, // 30,
                  child: SizedBox(
                      height: 170,
                      width: 170,
                      // child: Lottie.asset('assets/lottieupload.json')),
                )
                )],
            ),
            Padding(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  children: [
                    KnowledgeCentreCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/faqsAccordion');
                      },
                      iconUsed: Icons.question_answer,
                      cardLabel: 'Frequently Asked Questions',
                    ),
                    KnowledgeCentreCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context,'/selfCheckSlider' );
                      },
                      iconUsed: Icons.article,
                      cardLabel: 'Articles',
                    ),
                     KnowledgeCentreCard(
                      navigationFunction: () {
                        Navigator.pushNamed(context, '/individualNationalId');
                      },
                      iconUsed: Icons.article,
                      cardLabel: 'Health Tips',
                    ),
              
                  ],
                ))
          ],
        ),
      ),
    );
  }
}


