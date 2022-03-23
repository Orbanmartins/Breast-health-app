// ignore_for_file: prefer_const_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(3),
      child: Column(children: [
        ListTile(
          title: Text(widget.title, style: TextStyle(color: Colors.black,fontSize: 18),),
          trailing: IconButton(iconSize: 35,
            icon: Icon(
                _showContent ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_outlined),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                child: Text(widget.content,style: TextStyle(color: greyColor,fontSize: 15),),
              )
            : Container()
      ]),
    );
  }
}