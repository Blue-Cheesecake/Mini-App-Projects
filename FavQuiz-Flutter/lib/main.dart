import 'package:flutter/material.dart';
import './Question.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  static const questions = [
    "What's is my Favorite Color?",
    "What's is my Favorite Food?",
    "What's is my Favorite Game?"
  ];

  var _questionIndex = 0;

  void pressedAnswerButt() {
    if (_questionIndex == questions.length) {
      return;
    }
    setState(() {
      _questionIndex += 1;
    });

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
        body: Center(
          child: Column(
            children: [
              Question(questionText: questions[_questionIndex]),
              ElevatedButton(onPressed: pressedAnswerButt, child: const Text("Answer 1")),
              ElevatedButton(onPressed: pressedAnswerButt, child: const Text("Answer 2")),
            ],
          ),
        ),
      ),
    );
  }
}



