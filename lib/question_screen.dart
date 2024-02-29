import "package:flutter/material.dart";
import "package:quiz_app/gap_box.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];

  @override
  build(context) {
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
              style: const TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const GapBox(givenHeight: 30),
            ...currentQuestion.getShuffleAnswers().map(
              (item) {
                return AnswerButton(
                  onTap: () {},
                  answerText: item,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
