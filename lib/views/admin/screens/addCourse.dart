import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecardio/models/lessonmodel.dart';
import 'package:ecardio/views/design_course/lessonwidget.dart';
import 'package:ecardio/widgets/lessonListEditor.dart';
import 'package:flutter/material.dart';

class AddCourse extends StatefulWidget {
  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  int diseaseNotes = 0;
  int diseaseViews = 0;
  String diseaseTitle = '';
  String diseaseDescription = '';
  int lecturesInProgress = 0;
  int numberOfLessons = 0;

  List<LessonModel> lessons = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disease Editor'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'COURSE NAME'),
              onChanged: (value) {
                setState(() {
                  diseaseTitle = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Description'),
              onChanged: (value) {
                setState(() {
                  diseaseDescription = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Number of lessons'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  numberOfLessons = int.tryParse(value) ?? 0;
                });
              },
            ),
            LessonWidget(
              numberOfLessons: numberOfLessons,
              onSaveLessons: saveLessons,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Lessons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _saveDisease();
                saveLessons(lessons);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveDisease() {
    // Save disease data to Firestore
    print('Disease ID: $diseaseTitle');
    print('Notes: $diseaseNotes');
    print('Views: $diseaseViews');
    print('Description: $diseaseDescription');
    print('Lectures in Progress: $lecturesInProgress');
    print('Lessons : $lessons.length');
  }

  void saveLessons(List<LessonModel> ls) async {
    lessons = ls;
    print('Lessons: $lessons');

    for (var lesson in lessons) {
      print('Lesson: ${lesson.toMap()}');
    }
    try {
      await FirebaseFirestore.instance
          .collection('diseases')
          .doc(diseaseTitle)
          .set({
        'notes': diseaseNotes,
        'views': diseaseViews,
        'title': diseaseTitle,
        'description': diseaseDescription,
        'lecturesInProgress': lecturesInProgress,
        'lessons': lessons.map((lesson) => lesson.toMap()).toList()
      });
      print('Data has been successfully set to Firestore.');
    } catch (e) {
      print('Error setting data to Firestore: $e');
    }
  }
}
