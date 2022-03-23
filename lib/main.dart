// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:breast_health_app/Screens/Faqs.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckFive.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckFour.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckThree.dart';
import 'package:breast_health_app/Screens/selfCheck/selfCheckTwo.dart';
import 'package:breast_health_app/Screens/follow_up_qtns.dart';
import 'package:breast_health_app/Screens/home_screen.dart';
import 'package:breast_health_app/Screens/knowledge_centre.dart';
import 'package:breast_health_app/Screens/next_check.dart';
import 'package:breast_health_app/Screens/selfCheck/slide.dart';
import 'package:breast_health_app/Screens/self_check.dart';
import 'package:breast_health_app/Screens/signin.dart';
import 'package:breast_health_app/Screens/signup.dart';
import 'package:breast_health_app/Screens/splash_screen.dart';
import 'package:breast_health_app/Screens/survey.dart';
import 'package:breast_health_app/Screens/upload_healthdata.dart';
import 'package:breast_health_app/Widgets/navigationBar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Screens/survey_questions.dart';

Future<void> main() async {
  runApp(MaterialApp(
    theme: ThemeData.light().copyWith(
      primaryColor: const Color(0xFFF0777C),
      scaffoldBackgroundColor: const Color(0xFFFFF8FC),
    ),
    initialRoute: '/splashScreen',
    routes: {
      '/splashScreen': (context) => const SplashScreen(),
      '/signIn': (context) => const Signin(),
      '/signUp': (context) => const SignUp(),
      '/bottomNav': (context) => BasicBottomNavBar(),
      '/homeScreen': (context) => HomeScreeen(),
      '/faqsAccordion': (context) => FaqsAccordion(),
      '/surveyQuestions ': (context) => SurveyQuestions(),
      '/nextCheck': (context) => NextCheck(),
      '/uploadHealthData': (context) => UploadHealthData(),
      '/questionnaireSurvey': (context) => QuestionnaireSurvey(),
      '/knoweledgeCentreCards': (context) => KnoweledgeCentreCards(),
      '/followUpQuestions': (context) => FollowUpQuestions(),
      // '/selfCheck': (context) => SelfCheck(),

      '/selfCheckPage': (context) => SelfCheckPage(),
      '/selfCheckSlider': (context) => SelfCheckSlider(),
      '/selfCheckPageTwo': (context) => SelfCheckPageTwo(),
      '/selfCheckPageThree': (context) => SelfCheckPageThree(),

      '/selfCheckPageFour': (context) => SelfCheckPageFour(),

      '/selfCheckPageFive': (context) => SelfCheckPageFive(),
    },
  ));
}

//Added follow up questions and the knowledge centre cards

//The design page is also available now and must be integrated