import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = (questionIndex + 1).toString();
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 161, 241, 150)
            : const Color.fromARGB(255, 249, 76, 24),
      ),
      alignment: Alignment.center,
      child: Text(
        questionNumber,
        style: const TextStyle(
            color: Color.fromARGB(255, 22, 2, 156),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
