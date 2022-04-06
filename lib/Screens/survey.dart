import 'package:breast_health_app/Screens/other_input.dart';
import 'package:breast_health_app/Widgets/CheckBoxList.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SurveyStepper extends StatefulWidget {
  const SurveyStepper({Key? key}) : super(key: key);

  @override
  _SurveyStepperState createState() => _SurveyStepperState();
}

enum EducationLevel { Primary, OrdinaryLevel, AdvancedLevel, University }

class _SurveyStepperState extends State<SurveyStepper> {
  // the current step
  int _currentStep = 0;

  // Determines whether the stepper's orientation is vertical or horizontal
  // This variable can be changed by using the switch below
  bool _isVerticalStepper = true;

  // This function will be triggered when a step is tapped
  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  // This function will be called when the continue button is tapped
  _stepContinue() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  // This function will be called when the cancel button is tapped
  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  EducationLevel? _character = EducationLevel.Primary;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: Column(
        children: [
          // Controls the stepper orientation
          SwitchListTile(
              title: const Text('Vertical Stepper?'),
              subtitle: const Text('vertical/horizontal direction'),
              value: _isVerticalStepper,
              onChanged: (_) {
                setState(() {
                  _isVerticalStepper = !_isVerticalStepper;
                });
              }),
          const Divider(
            thickness: 2,
            height: 30,
          ),

          Expanded(
            // the Stepper widget
            child: Stepper(
              // vertical or horizontial
              type: _isVerticalStepper
                  ? StepperType.vertical
                  : StepperType.horizontal,
              physics: const ScrollPhysics(),
              currentStep: _currentStep,
              onStepTapped: (step) => _stepTapped(step),
              onStepContinue: _stepContinue,
              onStepCancel: _stepCancel,
              steps: [
                // The first step: Name
                Step(
                  title: const Text('Age'),
                  content: Column(
                    children: [
                      CustomFormField(hintText: 'Please enter your age ')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                // The second step: Phone number
                Step(
                  title: const Text('District'),
                  content: Column(
                    children: [
                      CustomFormField(hintText: 'Please enter your District ')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                // The third step: Verify phone number
                Step(
                  title: const Text('Verify'),
                  content: Column(
                    children: <Widget>[
                      ListTile(
                        title: const Text('Lafayette'),
                        leading: Radio<EducationLevel>(
                          value: EducationLevel.Primary,
                          groupValue: _character,
                          onChanged: (EducationLevel? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text('District'),
                  content: Column(
                    children: [
                      CustomFormField(hintText: 'Please enter your District ')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 3
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text('District'),
                  content: Column(
                    children: [
                      CustomFormField(hintText: 'Please enter your District ')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 4
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text('District'),
                  content: Column(
                    children: [
                      CustomFormField(hintText: 'Please enter your District ')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 5
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
