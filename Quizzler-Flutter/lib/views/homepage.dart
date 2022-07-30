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
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(15),
          ),
          onPressed: () => _pressedAnswerButton(textAns),
          child: Text(
            textAns,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }

  Widget _showResult() {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              "You score: $_score",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _questionsVM.reset();
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Re-attempt",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _showQuestionText() {
    return Text(
      _questionsVM.currentQuestionText,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Spacer(),
                !_questionsVM.isOutOfQuestion
                    ? _showQuestionText()
                    : _showResult(),
                const Spacer(),
                _answerButton("True"),
                const SizedBox(
                  height: 20,
                ),
                _answerButton("False"),
                const SizedBox(
                  height: 20,
                ),
                LinearProgressIndicator(
                  value: _questionsVM.progressBarValue,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
