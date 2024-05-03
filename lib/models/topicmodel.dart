import 'package:ecardio/models/quizquestion.dart';

class TopicModel {
  String topicName;
  List<QuizQuestionModel> quizQuestions;

  TopicModel({
    required this.topicName,
    required this.quizQuestions,
  });
}
