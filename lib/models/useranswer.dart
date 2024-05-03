class UserAnswerModel {
  String userId;
  String questionId;
  int selectedOptionIndex;
  bool isCorrect;

  UserAnswerModel({
    required this.userId,
    required this.questionId,
    required this.selectedOptionIndex,
    required this.isCorrect,
  });
}
