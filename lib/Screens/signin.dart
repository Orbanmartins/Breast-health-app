// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/Articles/bottomNav.dart';
import 'package:breast_health_app/Screens/signup.dart';
import 'package:breast_health_app/Screens/survey.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:breast_health_app/Widgets/input_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: mainColor,
          ),
          const TopSginin(),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: whiteshade,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    // child: Image.asset("assets/login.png"),
                  ),
                  InputField( inputIcon: Icon(Icons.email), hintTexti: "Email"),
                    const SizedBox(
                      height: 10,
                    ),
                    InputFieldPassword(
                  
                      hintTexti: "Password",
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end ,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: mainColor.withOpacity(0.7),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start ,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CheckerBox(),
                    ],
                  ),

                  ////////////////////////////////////////////////////////////////////
                  ///
                  CustomButton(buttonTitle: 'Sign In', navigationFunction: () {
                      Navigator.pushReplacement(
                        
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => QuestionnaireSurvey()));
                      print("Sign up click");
                    },),
                
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.08,
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Text.rich(
                      TextSpan(
                          text: "Don't already Have an account? ",
                          style: TextStyle(
                              color: grayshade.withOpacity(0.8), fontSize: 14),
                          children: [
                            TextSpan(
                                text: "Sign Up",
                                style: TextStyle(color: mainColor, fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                    print("Sign Up click");
                                  }),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}


 


class TopSginin extends StatelessWidget {
  const TopSginin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_back_sharp,
            color: whiteshade,
            size: 40,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "Sign In",
            style: TextStyle(color: whiteshade, fontSize: 25),
          )
        ],
      ),
    );
  }
}
