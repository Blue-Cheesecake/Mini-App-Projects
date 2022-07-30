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
    setState(() {
      _questionsVM.nextQuestion();
    });
  }

  Widget _answerButton(String textAns) {
    return OutlinedButton(
        onPressed: () => _pressedAnswerButton(textAns), child: Text(textAns));
  }

  Widget _showResult() {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue, width: 1.5)),
      child: Column(
        children: [
          Text("You score: $_score"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _questionsVM.reset();
                });
              },
              child: const Text("Re-attempt")),
        ],
      ),
    );
  }

  Widget _showQuestionText() {
    return Text(_questionsVM.currentQuestionText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              !_questionsVM.isOutOfQuestion
                  ? _showQuestionText()
                  : _showResult(),
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
