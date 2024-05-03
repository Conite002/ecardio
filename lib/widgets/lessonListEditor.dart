import 'package:ecardio/widgets/lessonEditor.dart';
import 'package:flutter/material.dart';
import 'package:ecardio/models/lessonmodel.dart';

class LessonListEditor extends StatefulWidget {
  final List<LessonModel> lessons;

  LessonListEditor({required this.lessons});

  @override
  _LessonListEditorState createState() => _LessonListEditorState();
}

class _LessonListEditorState extends State<LessonListEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Lesson List'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height *
            0.8, // Set height to 80% of the screen height
        child: ListView.builder(
          itemCount: widget.lessons.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(widget.lessons[index].title),
              onTap: () {
                _editLesson(index);
              },
            );
          },
        ),
      ),
    );
  }

  void _editLesson(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LessonEditor(
          lesson: widget.lessons[index],
          onSaveLesson: (updatedLesson) {
            setState(() {
              widget.lessons[index] = updatedLesson;
            });
          },
        );
      },
    );
  }
}
