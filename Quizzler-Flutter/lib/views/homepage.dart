import 'package:flutter/material.dart';
import 'package:quizzler_flutter/view_models/questionsVM.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _questionsVM = QuestionsVM();
  int _score = 0;

  void _pressedAnswerButton(String sentAnswer) {
    if (_questionsVM.currentQuestionAnswer == sentAnswer) _score += 1;
    _questionsVM.nextQuestion();
    if (!_questionsVM.isOutOfQuestion) {
      setState(() {});
    } else {
      // show score
    }
  }

  Widget _answerButton(String textAns) {
    return OutlinedButton(
        onPressed: () => _pressedAnswerButton(textAns), child: Text(textAns));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Text(_questionsVM.currentQuestionText),
              const Spacer(),
              _answerButton("True"),
              _answerButton("False"),
              LinearProgressIndicator(
                value: _questionsVM.progressBarValue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
