// ignore_for_file: prefer_const_constructors, avoid_print


import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_kit/survey_kit.dart';

class SurveyQuestions extends StatelessWidget {
  const SurveyQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: FutureBuilder<Task>(
            future: getSampleTask(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData &&
                  snapshot.data != null) {
                final task = snapshot.data!;
                return SurveyKit(
                  onResult: (SurveyResult result) {
                    print(result.finishReason);
                  },
                  task: task,
                  showProgress: true,
                  // ignore: prefer_const_literals_to_create_immutables
                  localizations: {
                    'cancel': 'Cancel',
                    'next': 'Next',
                  },
                  themeData: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.fromSwatch(
                      primarySwatch: Colors.pink,
                    ).copyWith(
                      onPrimary: scaffoldBackgroundColor,
                    ),
                    primaryColor: mainColor,
                    backgroundColor:scaffoldBackgroundColor,
                    appBarTheme: const AppBarTheme(
                      color: mainColor,
                      iconTheme: IconThemeData(
                        color: mainColor,
                      ),
                      titleTextStyle: TextStyle(
                        color: mainColor,
                      ),
                    ),
                    iconTheme: const IconThemeData(
                      color: mainColor,
                    ),
                    textSelectionTheme: TextSelectionThemeData(
                      cursorColor: mainColor,
                      selectionColor: mainColor,
                      selectionHandleColor: mainColor,
                    ),
                    cupertinoOverrideTheme: CupertinoThemeData(
                      primaryColor: mainColor,
                    ),
                    outlinedButtonTheme: OutlinedButtonThemeData(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(150.0, 60.0),
                        ),
                        side: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> state) {
                            if (state.contains(MaterialState.disabled)) {
                              return BorderSide(
                                color: Colors.grey,
                              );
                            }
                            return BorderSide(
                              color: mainColor,
                            );
                          },
                        ),
                        textStyle: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> state) {
                            if (state.contains(MaterialState.disabled)) {
                              return Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(
                                    color: Colors.grey,
                                  );
                            }
                            return Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(
                                  color: mainColor,
                                );
                          },
                        ),
                      ),
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          Theme.of(context).textTheme.button?.copyWith(
                                color: mainColor,
                              ),
                        ),
                      ),
                    ),
                    textTheme: TextTheme(
                      headline2: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                      headline5: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      bodyText2: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      subtitle1: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  surveyProgressbarConfiguration: SurveyProgressConfiguration(
                    backgroundColor: Colors.white,
                  ),
                );
              }
              return CircularProgressIndicator.adaptive();
            },
          ),
        ),
      ),
    );
  }

  Future<Task> getSampleTask() {
    var task = NavigableTask(
      id: TaskIdentifier(),
      steps: [
        InstructionStep(
          title: 'Welcome to the breast health survey',
          text: 'Please take time and fill in these questions as honestly as you can',
          buttonText: 'Next',
        ),
        QuestionStep(
          title: 'How old are you?',
          answerFormat: IntegerAnswerFormat(
            defaultValue: 25,
            hint: 'Please enter your age',
          ),
          isOptional: true,
        ),
      
       
        QuestionStep(
          title: 'Please Select your Age',
          answerFormat: ScaleAnswerFormat(
            step: 1,
            minimumValue: 1,
            maximumValue: 100,
            defaultValue: 3,
            minimumValueDescription: '10',
            maximumValueDescription: '100',
          ),
        ),
        QuestionStep(
          title: 'Education Level',
          text: 'What is your level of Education?',
          isOptional: false,
          answerFormat: MultipleChoiceAnswerFormat(
            textChoices: [
              TextChoice(text: 'Primary', value: 'Penicillin'),
              TextChoice(text: 'O\' Level', value: 'O\' Level'),
              TextChoice(text: 'A\' Level', value: 'A\' Level'),
              TextChoice(text: 'University', value: 'University'),
            ],
          ),
        ),
         QuestionStep(
          title: 'Cancer History',
          text: 'Do you know some close ones who had a breast condition?',
          answerFormat: BooleanAnswerFormat(
            positiveAnswer: 'Yes',
            negativeAnswer: 'No',
            result: BooleanResult.POSITIVE,
          ),
        ),
          QuestionStep(
          title: 'Motivation for using App',
          text: 'What is your motivation for using the app',
          isOptional: false,
          answerFormat: MultipleChoiceAnswerFormat(
            textChoices: [
              TextChoice(text: 'Research', value: 'Research'),
              TextChoice(text: 'Learn about my breast health', value: 'Learn about my breast health'),
              TextChoice(text: 'News on breast health', value: 'News on breast health'),
              TextChoice(text: 'Other', value: 'Other'),
            ],
          ),
        ),
        CompletionStep(
          stepIdentifier: StepIdentifier(id: '321'),
          text: 'Thanks for taking the survey, we will contact you soon!',
          title: 'Done!',
          buttonText: 'Submit survey',
        ),
      ],
    );
    task.addNavigationRule(
      forTriggerStepIdentifier: task.steps[6].stepIdentifier,
      navigationRule: ConditionalNavigationRule(
        resultToStepIdentifierMapper: (input) {
          switch (input) {
            case "Yes":
              return task.steps[0].stepIdentifier;
            case "No":
              return task.steps[7].stepIdentifier;
            default:
              return null;
          }
        },
      ),
    );
    return Future.value(task);
  }

}