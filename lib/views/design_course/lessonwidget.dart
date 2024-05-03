import 'package:ecardio/models/lessonmodel.dart';
import 'package:ecardio/widgets/lessonEditor.dart';
import 'package:flutter/material.dart';

class LessonWidget extends StatefulWidget {
  final int numberOfLessons;
  final List<LessonModel> lessons = [];
  final Function(List<LessonModel>) onSaveLessons;
  LessonWidget(
      {super.key, required this.numberOfLessons, required this.onSaveLessons});

  @override
  _LessonWidgetState createState() => _LessonWidgetState();
}

class _LessonWidgetState extends State<LessonWidget> {
  int _currentLessonIndex = 0;
  final List<String> _lessonTexts = List.filled(10, '');

  void _nextLesson() {
    setState(() {
      if (_currentLessonIndex < widget.numberOfLessons - 1) {
        _currentLessonIndex++;
      }
    });
  }

  void _previousLesson() {
    setState(() {
      if (_currentLessonIndex > 0) {
        _currentLessonIndex--;
      }
    });
  }

  void _clearTextFields() {
    setState(() {
      // _lessonTexts[_currentLessonIndex] = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Leçon ${_currentLessonIndex + 1}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _lessonTexts[_currentLessonIndex],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _lessonTexts[_currentLessonIndex] = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText:
                        'Entrer le titre de la leçon ${_currentLessonIndex + 1}',
                    border: const OutlineInputBorder(),
                  ),
                  maxLines: null,
                  controller: TextEditingController(
                    text: _lessonTexts[_currentLessonIndex],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return LessonEditor(
                          onSaveLesson: saveLessonInfo,
                        );
                      },
                    );
                  },
                  child: Text('Ouvrir l\'editer de leçon'),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                _previousLesson();
                _clearTextFields();
                sendLessonsToAddCourse();
              },
              child: Text('Prev'),
            ),
            Text(
              'Leçons ${_currentLessonIndex + 1} /${widget.numberOfLessons > 1 ? widget.numberOfLessons : 1}',
            ),
            ElevatedButton(
              onPressed: () {
                _nextLesson();
                _clearTextFields();
                sendLessonsToAddCourse();
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ],
    );
  }

  void saveLessonInfo(LessonModel lesson) {
    // add to list lesson
    widget.lessons.add(lesson);
    print(' ${lesson.toMap()}');
  }

  void sendLessonsToAddCourse() async {
    // Send the lessons to the parent widget
    await widget.onSaveLessons(widget.lessons);
  }
}
