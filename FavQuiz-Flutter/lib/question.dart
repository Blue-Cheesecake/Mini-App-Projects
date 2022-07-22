import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ));
  }
}
