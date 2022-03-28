// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/selfCheck/self_check_slider.dart';
import 'package:breast_health_app/Screens/survey.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:breast_health_app/Widgets/input_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
               scrollDirection: Axis.vertical,

            child: Stack(
                  children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: mainColor,
            ),
            const TopSginup(),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.20,
              child: Container(
                height: MediaQuery.of(context).size.height * 1.0,
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
                      child: Image.asset("assets/login.png"),
                    ),

                    //Add a gender field in the sign up process as well
                    InputField( inputIcon: Icon(Icons.email), hintTexti: "Email"),
                    const SizedBox(
                      height: 10,
                    ),
                    InputField(inputIcon: Icon(Icons.person_outlined),
                       hintTexti: "Full name"),
                    const SizedBox(
                      height: 10,
                      
                    ),
                      InputField(inputIcon: Icon(Icons.phone),
                       hintTexti: "Phone"),
                    const SizedBox(
                      height: 10,
                      
                    ),
                    InputFieldPassword(
                  
                      hintTexti: "Password",
                    ),
                    const CheckerBox(),
                    ////Button
                    CustomButton(buttonTitle: 'Continue', navigationFunction: () {
                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>QuestionnaireSurvey()));
                      print("Sign up click");
                    },),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.08,
                          top: MediaQuery.of(context).size.height * 0.08),
                      child: Text.rich(
                        TextSpan(
                            text: "I already Have an account ",
                            style: TextStyle(
                                color: grayshade.withOpacity(0.8), fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "Sign In",
                                  style: TextStyle(color: mainColor, fontSize: 16),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SelfCheckSlider()));
                                      print("Sign in click");
                                    }),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                  ],
                ),
          )),
    );
  }
}

class CheckerBox extends StatefulWidget {
  const CheckerBox({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckerBox> createState() => _CheckerBoxState();
}

class _CheckerBoxState extends State<CheckerBox> {
  bool? isCheck;
  @override
  void initState() {
    isCheck = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
              value: isCheck,
              checkColor: whiteshade, // color of tick Mark
              activeColor: mainColor,
              onChanged: (val) {
                setState(() {
                  isCheck = val!;
                  print(isCheck);
                });
              }),
          Text.rich(
            TextSpan(
                text: "I agree with ",
                style:
                    TextStyle(color: grayshade.withOpacity(0.8), fontSize: 16),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                      text: "Terms ",
                      style: TextStyle(color: mainColor, fontSize: 16)),
                  const TextSpan(text: "and "),
                  TextSpan(
                      text: "Policy",
                      style: TextStyle(color: mainColor, fontSize: 16)),
                ]),
          ),
        ],
      ),
    );
  }
}





class TopSginup extends StatelessWidget {
  const TopSginup({
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
            "Sign up",
            style: TextStyle(color: whiteshade, fontSize: 25),
          )
        ],
      ),
    );
  }
}
