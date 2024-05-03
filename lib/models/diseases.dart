import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/models/lessonmodel.dart';

class Disease {
  final String id;
  final String notes;
  final int views;
  final LessonModel lessons;
  final String title;
  final String description;
  final int lecturesInProgress;

  Disease({
    required this.id,
    required this.notes,
    required this.views,
    required this.lessons,
    required this.title,
    required this.description,
    required this.lecturesInProgress,
  });
  Future<Disease?> fetchDiseaseFromFirebase(String diseaseId) async {
    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('diseases')
          .doc(diseaseId)
          .get();

      Map<String, dynamic> diseaseData;
      if (documentSnapshot.exists) {
        diseaseData = documentSnapshot.data()! as Map<String, dynamic>;

        return Disease(
          id: documentSnapshot.id,
          notes: diseaseData['notes'],
          views: diseaseData['views'],
          lessons: diseaseData['lessons'],
          title: diseaseData['title'],
          description: diseaseData['description'],
          lecturesInProgress: diseaseData['lecturesInProgress'],
        );
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
