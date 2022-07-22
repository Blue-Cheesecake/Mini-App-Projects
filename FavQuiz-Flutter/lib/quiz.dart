import 'package:flutter/material.dart';

import './question.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final Iterable<Widget> answers;

  const Quiz({Key? key, required this.questionText, required this.answers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questionText),
        ...answers,
      ],
    );
  }
}
