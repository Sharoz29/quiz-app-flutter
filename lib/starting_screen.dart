import "package:flutter/material.dart";
import "package:quiz_app/custom_text_box.dart";
import "package:quiz_app/gap_box.dart";

class StartingScreen extends StatelessWidget {
  const StartingScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            './assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          const GapBox(
            givenHeight: 100,
          ),
          const CustomText(
              text: "Learn Flutter the fun way!",
              color: Colors.white,
              fontSize: 25),
          const GapBox(givenHeight: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const CustomText(
                text: "Start Quiz", color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
