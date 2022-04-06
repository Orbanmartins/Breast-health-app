// ignore_for_file: use_key_in_widget_constructors
import 'dart:convert';

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/accordion.dart';
<<<<<<< HEAD
import 'package:breast_health_app/Models/models.dart';
=======
import 'package:breast_health_app/models/models.dart';
>>>>>>> 68a512c2313c4b3cfdc97ce32f1d8b5aa7f82a1a
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
<<<<<<< HEAD

=======
>>>>>>> 68a512c2313c4b3cfdc97ce32f1d8b5aa7f82a1a
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      List data = responseData['faqs'];
      var faqs = data.forEach((faq) {
<<<<<<< HEAD
        final Faqs faqs =
            Faqs(question: faq['faq_question'], answer: faq['faq_answer']);
        setState(() {
          _faqs.add(faqs);
        });
      });
=======
        final Faqs faqs = Faqs(question: faq['faq_question'], answer: faq['faq_answer']);
        setState(() {
        _faqs.add(faqs);
      });
      });

>>>>>>> 68a512c2313c4b3cfdc97ce32f1d8b5aa7f82a1a
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
<<<<<<< HEAD
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
=======
        body: SafeArea(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Column(children: [
          ListView.builder(
          shrinkWrap: true,
          itemCount: _faqs.length,
          itemBuilder: (BuildContext context, int index) {
            var faq = _faqs[index];
            return Accordion(
                title: faq.question,
                content:faq.answer
                );
          },
        )

        //   Accordion(
        //     title:
        //         'Does wearing a bra or a bra with underwire cause breast cancer?',
        //     content:
        //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.',
        //   ),
        //   Accordion(
        //       title: 'Can a benign cyst become cancerous?',
        //       content:
        //           'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
        //   Accordion(
        //       title: 'Can men get breast cancer?',
        //       content:
        //           'Nulla facilisi. Donec a bibendum metus. Fusce tristique ex lacus, ac finibus quam semper eu. Ut maximus, enim eu ornare fringilla, metus neque luctus est, rutrum accumsan nibh ipsum in erat. Morbi tristique accumsan odio quis luctus.'),
        //   Accordion(
        //     title:
        //         'Does wearing a bra or a bra with underwire cause breast cancer?',
        //     content:
        //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.',
        //   ),
        //   Accordion(
        //       title: 'Can a benign cyst become cancerous?',
        //       content:
        //           'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
        //   Accordion(
        //     title:
        //         'Does wearing a bra or a bra with underwire cause breast cancer?',
        //     content:
        //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.',
        //   ),
        //   Accordion(
        //       title: 'Can a benign cyst become cancerous?',
        //       content:
        //           'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
        ]),
              ),
>>>>>>> 68a512c2313c4b3cfdc97ce32f1d8b5aa7f82a1a
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

