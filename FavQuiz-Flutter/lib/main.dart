import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  var questions = [
    "What's is my Favorite Color?",
    "What's is my Favorite Food?",
    "What's is my Favorite Game?"
  ];

  var questionIndex = 0;

  void pressedAnswerButt() {
    if (questionIndex == questions.length) {
      return;
    }
    setState(() {
      questionIndex += 1;
      print("Go!");
      print(questionIndex);
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
              Text(questions[questionIndex]),
              ElevatedButton(onPressed: pressedAnswerButt, child: const Text("Answer 1")),
              ElevatedButton(onPressed: pressedAnswerButt, child: const Text("Answer 2")),
            ],
          ),
        ),
      ),
    );
  }
}



