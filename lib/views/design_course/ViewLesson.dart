import 'package:flutter/material.dart';

class ViewLesson extends StatefulWidget {
  const ViewLesson({super.key});

  @override
  State<ViewLesson> createState() => _ViewLessonState();
}

class _ViewLessonState extends State<ViewLesson> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 70.0,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Leçon",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Contenu de la leçon ici...",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
