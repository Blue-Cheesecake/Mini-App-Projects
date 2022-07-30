import 'package:flutter/material.dart';
import 'package:quizzler_flutter/view_models/questionsVM.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final questionManager = QuestionManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(questionManager.currentQuestionText),
            ],
          ),
        ),
      ),
    );
  }
}
