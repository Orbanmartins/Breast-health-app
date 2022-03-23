
import 'package:breast_health_app/Widgets/button.dart';
import 'package:breast_health_app/Widgets/selfcheck_widget.dart';
import 'package:flutter/material.dart';

class SelfCheckPage extends StatelessWidget {
  const SelfCheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        SingleChildScrollView(
            child: SelfCheckWidget(
                usedGif: Image.asset('assets/odv.gif'),
                selfHeading: 'Mirror Mirror',
                selfBody:
                    'Spend some time looking at yourself in the mirror. Put your breasts in the  mirror. Put your hands over your head and then on your hips. Move your body so you see every part of your breasts, don\'nt forget your side and under boob',
                buttonUsed: CustomButton(
                  buttonTitle: 'Next',
                  navigationFunction: () {
                    Navigator.pushNamed(context, '/selfCheckPageTwo');
                  },
                )));
  }
}
