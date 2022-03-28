// ignore_for_file: use_key_in_widget_constructors

import 'package:breast_health_app/Constants/constants.dart';
import 'package:breast_health_app/Widgets/accordion.dart';
import 'package:flutter/material.dart';

class FaqsAccordion extends StatefulWidget {
  @override
  State<FaqsAccordion> createState() => _FaqsAccordionState();
}

class _FaqsAccordionState extends State<FaqsAccordion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: const [
            Accordion(
              title:
                  'Does wearing a bra or a bra with underwire cause breast cancer?',
              content:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.',
            ),
            Accordion(
                title: 'Can a benign cyst become cancerous?',
                content:
                    'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
            Accordion(
                title: 'Can men get breast cancer?',
                content:
                    'Nulla facilisi. Donec a bibendum metus. Fusce tristique ex lacus, ac finibus quam semper eu. Ut maximus, enim eu ornare fringilla, metus neque luctus est, rutrum accumsan nibh ipsum in erat. Morbi tristique accumsan odio quis luctus.'),
            Accordion(
              title:
                  'Does wearing a bra or a bra with underwire cause breast cancer?',
              content:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.',
            ),
            Accordion(
                title: 'Can a benign cyst become cancerous?',
                content:
                    'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
            Accordion(
              title:
                  'Does wearing a bra or a bra with underwire cause breast cancer?',
              content:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.',
            ),
                          

            Accordion(
                title: 'Can a benign cyst become cancerous?',
                content:
                    'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
     
         
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

