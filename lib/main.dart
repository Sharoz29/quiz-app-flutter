import "package:flutter/material.dart";
import "package:quiz_app/starting_screen.dart";

void main() {
  runApp(
    MaterialApp(
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
            child: const StartingScreen()),
      ),
    ),
  );
}
