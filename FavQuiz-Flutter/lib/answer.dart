import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() pressedAnswer;

  const Answer(
      {Key? key, required this.answerText, required this.pressedAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: pressedAnswer,
        child: Text(answerText),
      ),
    );
  }
}
