// ignore_for_file: use_key_in_widget_constructors
import 'dart:convert';

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/accordion.dart';
import 'package:breast_health_app/Models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FaqsAccordion extends StatefulWidget {
  @override
  State<FaqsAccordion> createState() => _FaqsAccordionState();
}

class _FaqsAccordionState extends State<FaqsAccordion> {
  final List<dynamic> _faqs = [];

  @override
  void initState() {
    super.initState();
    getFaqs();
  }

  getFaqs() async {
    final response = await http.get(Uri.parse(faqsUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      List data = responseData['faqs'];
      var faqs = data.forEach((faq) {
        final Faqs faqs =
            Faqs(question: faq['faq_question'], answer: faq['faq_answer']);
        setState(() {
          _faqs.add(faqs);
        });
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: const Text(
          'Frequent questions',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: _faqs.length,
              itemBuilder: (BuildContext context, int index) {
                var faq = _faqs[index];
                return Accordion(title: faq.question, content: faq.answer);
              },
            )
          ]),
        ),
      ),
    );
  }
}

// class _FaqsAccordionState extends State<FaqsAccordion> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder( itemCount: faqsList.length,
//       scrollDirection: Axis.vertical,
//       shrinkWrap: true,
//       physics: BouncingScrollPhysics(),
//       itemBuilder: (context, index) {
//         var faqs = faqsList[index];
//        return Accordion(faqs:faqs);
        
        
//          }   );
//   }
// }

