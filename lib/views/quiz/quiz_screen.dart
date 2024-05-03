import 'package:ecardio/views/quiz/resultat_screen.dart';
import 'package:ecardio/widgets/appconfig.dart';
import 'package:ecardio/widgets/quiz_data_fr.dart';
import 'package:ecardio/widgets/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:ecardio/models/quizquestion.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizScreen extends StatefulWidget {
  final String category;

  const QuizScreen({Key? key, required this.category}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<QuizQuestionModel> questions = [];
  int currentIndex = 0;
  int? selectedAnswerIndex;
  bool showResult = false;
  int correctAnswers = 0;

  @override
  void initState() {
    super.initState();
    loadQuestions();
  }

  void loadQuestions() {
    List<QuizQuestionModel> loadedQuestions =
        LoadQuizQuestions(widget.category);

    loadedQuestions.shuffle();

    setState(() {
      questions = loadedQuestions.take(10).toList();
    });
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz - ${widget.category}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // index in big circle
          Container(
            margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Material(
              borderRadius:
                  BorderRadius.circular(50), // Half of the width or height
              elevation: 2.0,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.black, // Set the desired color
                  shape:
                      BoxShape.circle, // Use BoxShape.circle to create a circle
                ),
                child: Center(
                  child: Text(
                    '${currentIndex + 1}',
                    style:
                        AppWidget.logoTextStyle('white'), // Set the text color
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 2.0, // Set the elevation value
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  currentIndex < questions.length
                      ? questions[currentIndex].question
                      : 'Quiz Complete',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          if (currentIndex < questions.length)
            ...questions[currentIndex].options.asMap().entries.map((entry) {
              final int index = entry.key;
              final String option = entry.value;
              return RadioListTile<int>(
                title: Text(option),
                value: index,
                groupValue: selectedAnswerIndex,
                onChanged: (value) {
                  setState(() {
                    selectedAnswerIndex = value;
                  });
                },
              );
            }).toList(),
          if (currentIndex < questions.length)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (selectedAnswerIndex != null) {
                      if (selectedAnswerIndex ==
                          questions[currentIndex].correctAnswerIndex) {
                        correctAnswers++;
                      }
                      setState(() {
                        showAnswerAndRecommendation(); // Afficher la réponse et la recommandation
                      });
                    } else {
                      showSnackBar(
                          'S\'il vous plaît, sélectionnez une réponse.');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 5, // elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                  ),
                  child: Text(
                    'Valider',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentIndex < questions.length - 1) {
                      setState(() {
                        selectedAnswerIndex = null;
                        currentIndex++;
                      });
                    } else {
                      setState(() {
                        showResult = true;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 5, // elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                  ),
                  child: Text(
                    currentIndex < questions.length - 1 ? 'Suivant' : 'Fin',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

          if (showResult)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            score: correctAnswers,
                            totalQuestions: questions.length,
                          )),
                );
              },
              child: const Text('Voir le résultat'),
            ),
          Column(
            children: [
              Column(
                children: [
                  Text(
                    'Result: $correctAnswers / ${questions.length}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Set the text color
                    ),
                  ),
                  SizedBox(height: 20),
                  if (correctAnswers / questions.length < 0.33)
                    Image.asset(
                      'assets/icons/04.png',
                      width: 50,
                      height: 50,
                    ), // Bad performance
                  if (correctAnswers / questions.length >= 0.33 &&
                      correctAnswers / questions.length < 0.66)
                    Image.asset(
                      'assets/icons/01.png',
                      width: 50,
                      height: 50,
                    ), // Better performance
                  if (correctAnswers / questions.length >= 0.66)
                    Image.asset(
                      'assets/icons/02.png',
                      width: 50,
                      height: 50,
                    ), // Excellent performance
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Ajoutez cette méthode à la classe `_QuizScreenState`
  void showAnswerAndRecommendation() {
    final correctAnswerIndex = questions[currentIndex].correctAnswerIndex;
    final correctAnswer = questions[currentIndex].options[correctAnswerIndex];
    final explanation = questions[currentIndex].explanation;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 5, // elevation
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25),
            ),
            child: const Text(
              'Réponse correcte',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('La réponse correcte est : $correctAnswer'),
              const SizedBox(height: 10),
              const Text('Recommandation :',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.secondaryColor)),
              Text(explanation),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Fermer',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
