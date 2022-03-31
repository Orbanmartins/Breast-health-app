

class Faqs {
  final String question;
  final String answer;

  Faqs({required this.question, required this.answer});

  factory Faqs.fromJson(Map<String, dynamic> json) {
    return Faqs(
      question: json['faqs_question'],
      answer: json['faqs_answer'],
    );
  }
}

class Questions {
  final String title;
  final List surveyAns;

  Questions({required this.title, required this.surveyAns});

  factory Questions.fromJson(Map<String, dynamic> json) {
    return Questions(
      title: json['question_title'],
      surveyAns : json['SurveyAns']
    );
  }
}

class Answers {
  final String text;
  final Object surveyQuestion;
  Answers({required this.text, required this.surveyQuestion});

  factory Answers.fromJson(Map<String, dynamic> json) {
    return Answers(text: json['answer_text'], surveyQuestion: json['SurveyQn']);
  }
}
