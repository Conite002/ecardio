import 'package:ecardio/views/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sélectionner une catégorie'),
      ),
      body: ListView(
        children: [
          CategoryTile(
            categoryName: 'Dyslipidemie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuizScreen(category: 'Dyslipidemie')),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Obésité',
            onTap: () {
              // Navigate to the quiz screen with the selected category
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuizScreen(category: 'Obésité')),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Tabagisme',
            onTap: () {
              // Navigate to the quiz screen with the selected category
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuizScreen(category: 'Tabagisme')),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Hépatithe',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuizScreen(category: 'Hépatithe')),
              );
            },
          ),
          CategoryTile(
            categoryName: 'Diabètes',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuizScreen(category: 'Diabètes')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;

  const CategoryTile({
    required this.categoryName,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(categoryName),
      onTap: onTap,
    );
  }
}
