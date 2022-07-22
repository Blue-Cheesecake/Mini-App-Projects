import 'package:favquizflutter/QuestionModel.dart';

class QuizManager {
  final _quizs = [
    const QuestionModel(
        questionText: "What's my Fav Color?",
        expectedAnswer: "Blue",
        choices: ["Red", "Green", "Blue"]),
    const QuestionModel(
        questionText: "What's my Fav Animal",
        expectedAnswer: "Rabbit",
        choices: ["Rabbit", "Lion", "Shark"]),
    const QuestionModel(
        questionText: "What's my First Name",
        expectedAnswer: "Cheese",
        choices: ["Cupcake", "Cheese", "Cake"])
  ];
  var _currIndex = 0;

  bool canNextQuestion() {
    _currIndex += 1;
    if (_currIndex == _quizs.length) {
      _currIndex -= 1;
      return false;
    }
    return true;
  }

  String getCurrentQuestionText() {
    return _quizs[_currIndex].questionText;
  }

  String getExpectedAnswer() {
    return _quizs[_currIndex].expectedAnswer;
  }

  List<String> getChoices() {
    return _quizs[_currIndex].choices;
  }
}
