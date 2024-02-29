import "package:flutter/material.dart";
import "package:quiz_app/custom_text_box.dart";
import "package:quiz_app/gap_box.dart";
import "package:quiz_app/answer_button.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomText(
              text: "The question", color: Colors.white, fontSize: 25),
          const GapBox(givenHeight: 30),
          AnswerButton(
            onTap: () {},
            answerText: "Answer 1",
          ),
          AnswerButton(
            onTap: () {},
            answerText: "Answer 2",
          ),
          AnswerButton(
            onTap: () {},
            answerText: "Answer 3",
          ),
          AnswerButton(
            onTap: () {},
            answerText: "Answer 4",
          )
        ],
      ),
    );
  }
}
