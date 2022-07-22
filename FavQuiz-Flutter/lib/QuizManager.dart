import 'package:favquizflutter/QuestionModel.dart';

class QuizManager {
  final _quizs = const [
    QuestionModel(
        questionText: "What's my Fav Color?",
        expectedAnswer: "Blue",
        choices: ["Red", "Green", "Blue"]),
    QuestionModel(
        questionText: "What's my Fav Animal",
        expectedAnswer: "Rabbit",
        choices: ["Rabbit", "Lion", "Shark"]),
    QuestionModel(
        questionText: "What's my First Name",
        expectedAnswer: "Cheese",
        choices: ["Cupcake", "Cheese", "Cake"])
  ];
  var _currIndex = 0;

  bool canNextQuestion() {
    if (_currIndex + 1 == _quizs.length) {
      return false;
    }
    return true;
  }

  bool isInLastQuestion() {
    return _currIndex == _quizs.length - 1;
  }

  bool isIndexOutOFBound() {
    return _currIndex >= _quizs.length;
  }

  void next() {
    _currIndex += 1;
  }

  void goToFirstQuestion() {
    _currIndex = 0;
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
