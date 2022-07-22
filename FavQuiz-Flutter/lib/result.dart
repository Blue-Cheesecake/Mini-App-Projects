import 'package:favquizflutter/QuizManager.dart';
import 'package:flutter/material.dart';

import './main.dart';

class Result extends StatelessWidget {
  final int score;
  final QuizManager quizManager;
  final State<MainApp> delegate;

  const Result(
      {Key? key,
      required this.score,
      required this.quizManager,
      required this.delegate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your score",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                "$score",
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        TextButton(
            onPressed: () {
              delegate.setState(() {
                quizManager.goToFirstQuestion();
              });
            },
            child: const Text("Restart"))
      ],
    );
  }
}
