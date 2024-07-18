import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // const AnswerButton(
  //   this.text,
  //   this.onPressed, {
  //   super.key,
  // });

// named arguments

  const AnswerButton({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            backgroundColor: const Color.fromARGB(255, 2, 13, 21),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
