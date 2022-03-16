// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:breast_health_app/Screens/Faqs.dart';
import 'package:breast_health_app/Screens/home_screen.dart';
import 'package:breast_health_app/Screens/next_check.dart';
import 'package:breast_health_app/Screens/signin.dart';
import 'package:breast_health_app/Screens/signup.dart';
import 'package:breast_health_app/Screens/splash_screen.dart';
import 'package:breast_health_app/Screens/survey.dart';
import 'package:breast_health_app/Screens/upload_healthdata.dart';
import 'package:breast_health_app/Widgets/bottom_navigation_bar.dart';
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
      '/homeScreeen': (context) => HomeScreeen(),
      '/faqsAccordion': (context) => FaqsAccordion(),
      '/surveyQuestions ': (context) => SurveyQuestions(),
      '/nextCheck': (context) => NextCheck(),
      '/uploadHealthData': (context) => UploadHealthData(),
      '/surveyStepper': (context) => SurveyStepper(),
    },
  ));
}
