import "package:flutter/material.dart";
import "package:quiz_app/data/questions.dart";
import "package:quiz_app/question_screen.dart";
import "package:quiz_app/starting_screen.dart";
import "package:quiz_app/results_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = StartingScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          chosenAnswers: selectedAnswers,
          restartQuiz: restartQuiz,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(
        onAnswerQuestion: chooseAnswer,
      );
    });
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers =[];
      activeScreen = StartingScreen(switchScreen);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
