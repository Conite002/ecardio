class QuizQuestionModel {
  String question;
  List<String> options;
  int correctAnswerIndex;
  String explanation;

  QuizQuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
  });
}
