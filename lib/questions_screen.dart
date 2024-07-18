import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

import "package:adv_basics/data/questions.dart";
import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    final answers = currentQuestion.getShuffleAnswers();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 255, 216, 191),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            ...answers.map((answer) {
              return AnswerButton(
                  text: answer,
                  onPressed: () {
                    answerQuestion(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}
