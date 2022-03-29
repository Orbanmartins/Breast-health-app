
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

  Questions({required this.title});

  factory Questions.fromJson(Map<String, dynamic> json) {
    return Questions(
      title: json['question_title'],
    );
  }
}
