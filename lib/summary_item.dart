import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/gap_box.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["user_answer"] == itemData["correct_answer"];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: ((itemData['question_index'] as int)),
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const GapBox(givenHeight: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      itemData['user_answer'] as String,
                      maxLines: null,
                      style: TextStyle(
                        color: isCorrectAnswer
                            ? const Color.fromARGB(255, 161, 241, 150)
                            : const Color.fromARGB(255, 249, 76, 24),
                      ),
                    ),
                  ),
                  Icon(
                    isCorrectAnswer
                        ? Icons.check
                        : Icons.close, // Replace with your desired icon
                    color: isCorrectAnswer
                        ? const Color.fromARGB(255, 161, 241, 150)
                        : const Color.fromARGB(255, 249, 76, 24),
                  ),
                ],
              ),
              if (!isCorrectAnswer)
                Text(
                  itemData['correct_answer'] as String,
                  maxLines: null,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 161, 241, 150),
                  ),
                ),
              const GapBox(givenHeight: 20)
            ],
          ),
        ),
      ],
    );
  }
}
