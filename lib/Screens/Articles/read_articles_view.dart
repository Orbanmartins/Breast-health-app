// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors


import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Models/news.dart';
import 'package:breast_health_app/Widgets/News/circle_button.dart';
import 'package:flutter/material.dart';

//This is the page where one goes when they click to read articles
class ReadArticlesView extends StatelessWidget {
  final Articles articles;
  ReadArticlesView({required this.articles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18.0, 15.0, 18.0, 0),
              child: Row(
                children: [
                  CircleButton(
                    icon: Icons.arrow_back_ios,
                    onTap: () => Navigator.pop(context),
                  ),
                  Spacer(),
                  CircleButton(
                    icon: Icons.share,
                    onTap: () {},
                  ),
                  CircleButton(
                    icon: Icons.favorite_border,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            SizedBox(height: 12.0),
            Hero(
              tag: articles.seen,
              child: Container(
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(articles.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 15.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: kGrey3, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 5.0,
                        backgroundColor: kGrey3,
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        articles.category,
                        style: kCategoryTitle,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Status(
                  icon: Icons.remove_red_eye,
                  total: articles.seen,
                ),
                SizedBox(width: 15.0),
                Status(
                  icon: Icons.favorite_border,
                  total: articles.favorite,
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Text(articles.title, style: kTitleCard.copyWith(fontSize: 28.0)),
            SizedBox(height: 15.0),
            Row(
              children: [
                Text(articles.time, style: kDetailContent),
                SizedBox(width: 5.0),
                SizedBox(
                  width: 10.0,
                  child: Divider(
                    color: kBlack,
                    height: 1.0,
                  ),
                ),
                SizedBox(width: 5.0),
                Text(
                  articles.author,
                  style: kDetailContent.copyWith(color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text(
              articles.content,
              style: descriptionStyle,
            ),
            SizedBox(height: 25.0)
          ],
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  final IconData icon;
  final String total;
  Status({required this.icon, required this.total});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: kGrey2),
        SizedBox(width: 4.0),
        Text(total, style: kDetailContent),
      ],
    );
  }
}
