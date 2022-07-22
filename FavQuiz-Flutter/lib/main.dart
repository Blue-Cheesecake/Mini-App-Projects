import 'package:flutter/material.dart';

import './QuizManager.dart';
import './answer.dart';
import './question.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _quizManager = QuizManager();

  void pressedAnswerButt() {
    if (_quizManager.canNextQuestion()) {
      setState(() {
        _quizManager.next();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Favorite Quiz"),
          centerTitle: false,
        ),
        floatingActionButton: ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _quizManager.goToFirstQuestion();
              });
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text("Back")),
        body: Center(
          child: Column(
            children: [
              Question(questionText: _quizManager.getCurrentQuestionText()),
              ..._quizManager.getChoices().map((e) =>
                  Answer(answerText: e, pressedAnswer: pressedAnswerButt)),
            ],
          ),
        ),
      ),
    );
  }
}
