import "package:flutter/material.dart";
import "package:quiz_app/gap_box.dart";
import "package:quiz_app/custom_text_box.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                './assets/images/quiz-logo.png',
                width: 200,
              ),
              const GapBox(
                givenHeight: 100,
              ),
              const CustomText(
                  text: "Learn Flutter the fun way!",
                  color: Colors.white,
                  fontSize: 25),
              const GapBox(givenHeight: 50),
              TextButton(
                onPressed: () => {},
                child: const CustomText(
                    text: "Start Quiz", color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
