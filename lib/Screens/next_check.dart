// ignore_for_file: prefer_const_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Screens/signup.dart';
import 'package:breast_health_app/Widgets/button.dart';
import 'package:breast_health_app/Widgets/input_field.dart';
import 'package:flutter/material.dart';

class NextCheck extends StatefulWidget {
  NextCheck({Key? key}) : super(key: key);

  @override
  State<NextCheck> createState() => _NextCheckState();
}

class _NextCheckState extends State<NextCheck> {
  final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 80,
          ),

          //This is the textfield that will need to be edited
          TextField(
            readOnly: true,
            controller: dateController,
            decoration: InputDecoration(  border: OutlineInputBorder(),hintText: "Please select Date"),
            onTap: () async {
              var date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100));
              dateController.text = date.toString().substring(0, 10);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'When did your last period end?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          InputField(
              inputIcon: Icon(Icons.date_range_rounded),
              hintTexti: "Please select Date"),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'How many days did it last?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          InputField(
              inputIcon: Icon(
                Icons.view_day_sharp,
              ),
              hintTexti: "Please Select Days"),
          const SizedBox(
            height: 10,
          ),
          const CheckerBox(),
          Container(
            margin: EdgeInsets.all(20),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: mainColor,
                    size: 50,
                  ),
                  title: Text(
                    'Your next self-check is scheduled for April 06,2022',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),

          CustomButton(buttonTitle: 'Submit', navigationFunction: () {
                    Navigator.pushNamed(context, '/homeScreen');
                  },)
        ],
      ),
    );
  }
}
