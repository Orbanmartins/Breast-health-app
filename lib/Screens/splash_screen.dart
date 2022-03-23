
 // ignore_for_file: prefer_const_constructors
 
// import 'select_user.dart';
import 'dart:async';

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/signin.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
          Timer(
            Duration(seconds: 3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Signin())
                )
                );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/cancer.png',height:80,width: 80,),
            const Text('Breast health ',style: TextStyle(color: mainColor,fontSize:25)),
            const SizedBox(height: 50,),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(mainColor),
            )
          ],
        ),
      ),
      
    );
  }
}

 