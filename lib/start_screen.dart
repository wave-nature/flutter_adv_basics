import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // NOT RECOMMENDED PERFORMANCE INTENSIVE
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),

          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(149, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text("Let's learn flutter in fun way!",
              style: GoogleFonts.poppins(
                  color: Colors.amber,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text("Start Quiz"),
            iconAlignment: IconAlignment.end,
          )
        ],
      ),
    );
  }
}
