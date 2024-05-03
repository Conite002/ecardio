import 'package:ecardio/models/useranswer.dart';

class QuizSessionModel {
  String sessionId;
  String userId;
  String topicName;
  List<UserAnswerModel> questionsAnswered;

  QuizSessionModel({
    required this.sessionId,
    required this.userId,
    required this.topicName,
    required this.questionsAnswered,
  });
}
