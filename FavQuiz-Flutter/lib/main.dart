import 'package:favquizflutter/quiz.dart';
import 'package:favquizflutter/result.dart';
import 'package:flutter/material.dart';

import './QuizManager.dart';
import './answer.dart';

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
  late Widget showedWidget;

  void pressedAnswerButt(String sentText) {
    _quizManager.isCorrectAnswer(sentText);
    setState(() {
      _quizManager.next();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_quizManager.isIndexOutOFBound()) {
      showedWidget = Result(
        score: _quizManager.getTotalScore(),
      );
    } else {
      showedWidget = Quiz(
          questionText: _quizManager.getCurrentQuestionText(),
          answers: _quizManager.getChoices().map((e) => Answer(
              answerText: e,
              pressedAnswer: () {
                pressedAnswerButt(e);
              })));
    }

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
        body: Center(child: showedWidget),
      ),
    );
  }
}
