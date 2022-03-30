import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Models/news.dart';
import 'package:flutter/material.dart';


class PrimaryCard extends StatelessWidget {
  final Articles articles;
  PrimaryCard({required this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: kGrey3, width: 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // ignore: prefer_const_constructors
              CircleAvatar(
                radius: 5.0,
                backgroundColor: kGrey1,
              ),
              SizedBox(width: 10.0),
              Text(articles.category, style: kCategoryTitle)
            ],
          ),
          SizedBox(height: 5.0),
          Expanded(
            child: Hero(
              tag: articles.seen,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(articles.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            articles.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: kTitleCard,
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                articles.time,
                style: kDetailContent,
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                radius: 5.0,
                backgroundColor: kGrey1,
              ),
              SizedBox(width: 10.0),
              Text("${articles.estimate} min read", style: kDetailContent)
            ],
          )
        ],
      ),
    );
  }
}
