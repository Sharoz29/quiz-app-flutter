import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/gap_box.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.chosenAnswers,required this.restartQuiz, super.key});

  final List<String> chosenAnswers;

  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;

    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "You answered $numCorrectQuestions out of $numTotalQuestions questions right!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const GapBox(givenHeight: 30),
            QuestionSummary(
              summaryData: getSummaryData(),
            ),
            const GapBox(givenHeight: 30),
            TextButton.icon(
                onPressed: restartQuiz,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                label: const Text("Restart quiz"),
                icon: const Icon(Icons.restart_alt_sharp))
          ],
        ),
      ),
    );
  }
}
