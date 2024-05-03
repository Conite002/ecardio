import 'package:ecardio/models/lessonmodel.dart';
import 'package:flutter/material.dart';

// Modèle de cours

class LessonEditor extends StatefulWidget {
  final Function(LessonModel) onSaveLesson;
  LessonModel? lesson =
      LessonModel(title: '', text: '', videoUrl: '', imageUrl: '');

  LessonEditor({
    super.key,
    required this.onSaveLesson,
    this.lesson,
  });
  @override
  _LessonEditorState createState() => _LessonEditorState();
}

class _LessonEditorState extends State<LessonEditor> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _videoUrlController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit Course Content'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(labelText: 'Text'),
            ),
            TextField(
              controller: _videoUrlController,
              decoration: InputDecoration(labelText: 'Video URL'),
            ),
            TextField(
              controller: _imageUrlController,
              decoration: InputDecoration(labelText: 'Image URL'),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            LessonModel lesson = LessonModel(
              title: _titleController.text,
              text: _textController.text,
              videoUrl: _videoUrlController.text,
              imageUrl: _imageUrlController.text,
            );

            _sendLessonInfo(lesson);
            Navigator.of(context).pop();
          },
          child: Text('Save'),
        ),
      ],
    );
  }

  void _sendLessonInfo(LessonModel lesson) {
    widget.onSaveLesson(lesson);
  }
}
