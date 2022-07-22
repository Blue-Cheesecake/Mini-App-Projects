class QuestionModel {
  final String questionText;
  final String expectedAnswer;
  final List<String> choices;

  const QuestionModel(
      {required this.questionText,
      required this.expectedAnswer,
      required this.choices});
}
