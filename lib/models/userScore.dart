class UserScoreModel {
  String userId;
  Map<String, int> topicScores;

  UserScoreModel({
    required this.userId,
    required this.topicScores,
  });
}
