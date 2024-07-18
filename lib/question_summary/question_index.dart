import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex({super.key, required questionNumber});

  final int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color.fromARGB(255, 233, 30, 179)),
      child: Text(
        (questionNumber + 1).toString(),
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
