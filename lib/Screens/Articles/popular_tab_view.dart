// ignore_for_file: prefer_const_constructors


import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Models/news.dart';
import 'package:breast_health_app/Screens/Articles/read_articles_view.dart';
import 'package:breast_health_app/Widgets/News/primary_card.dart';
import 'package:breast_health_app/Widgets/News/secondary_card.dart';
import 'package:flutter/material.dart';

class PopularTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            padding: EdgeInsets.only(left: 18.0),
            child: ListView.builder(
              itemCount: popularList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var Articles = popularList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadArticlesView(articles: Articles),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12.0),
                    child: PrimaryCard(articles: Articles),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25.0),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Text("BASED ON YOUR READING HISTORY",
                  style: kNonActiveTabStyle),
            ),
          ),
          ListView.builder(
            itemCount: healthList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              var health = healthList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadArticlesView(articles: health),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(articles: health),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
