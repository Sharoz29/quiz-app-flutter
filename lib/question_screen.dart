import "package:flutter/material.dart";
import "package:quiz_app/gap_box.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onAnswerQuestion, super.key});

  final void Function(String answer) onAnswerQuestion;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onAnswerQuestion(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const GapBox(givenHeight: 30),
            ...currentQuestion.getShuffleAnswers().map(
              (answer) {
                return AnswerButton(
                  onTap: () {
                    answerQuestion(answer);
                  },
                  answerText: answer,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
