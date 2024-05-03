class LessonModel {
  String title;
  String text;
  String videoUrl;
  String imageUrl;

  LessonModel(
      {required this.title,
      required this.text,
      required this.videoUrl,
      required this.imageUrl});

  LessonModel.fromMap(Map<String, dynamic> map)
      : title = map['title'] ?? '',
        text = map['text'] ?? '',
        videoUrl = map['videoUrl'] ?? '',
        imageUrl = map['imageUrl'] ?? '';

  // Convertir en Map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
      'videoUrl': videoUrl,
      'imageUrl': imageUrl,
    };
  }
}
