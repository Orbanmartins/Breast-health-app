// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors


import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/Articles/health_tips_tab_view.dart';
import 'package:breast_health_app/Screens/Articles/articles_tab_view.dart';
import 'package:breast_health_app/Screens/Faqs.dart';
import 'package:flutter/material.dart';

class KnowledgeCentre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
                  SizedBox(
                height: 20,
              ),
              Text('KNOWLEDGE CENTRE', style:kActiveTabStyle.copyWith(fontSize: 25.0)),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: mainColor,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                  tabs: [
                    Tab(text: "Articles"),
                    Tab(text: "Health Tips"),
                    Tab(text: "FAQs"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ArticlesTabView(),
            HealthTabView(),
            FaqsAccordion(),
          ],
        ),
      ),
    );
  }
}
