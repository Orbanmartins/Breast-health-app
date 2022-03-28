import 'package:breast_health_app/Models/news.dart';
import 'package:breast_health_app/Screens/Articles/read_articles_view.dart';
import 'package:breast_health_app/Widgets/News/secondary_card.dart';
import 'package:flutter/material.dart';

class HealthTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: healthList.length,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
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
    );
  }
}
