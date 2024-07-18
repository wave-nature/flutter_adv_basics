import 'package:adv_basics/question_summary/question_index.dart';
import 'package:flutter/material.dart';

class QuestionList extends StatelessWidget {
  const QuestionList({super.key, required this.summary});

  final Map<String, Object> summary;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndex(questionNumber: summary['question_index'] as int),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summary["question"] as String,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                summary['user_answer'] as String,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: summary['user_answer'] == summary['correct_answer']
                      ? const Color.fromARGB(255, 83, 7, 183)
                      : const Color.fromARGB(255, 113, 13, 6),
                ),
              ),
              Text(
                summary['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 83, 7, 183),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
