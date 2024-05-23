class Question {
  late String questionTitle;
  late List<String> wrongAnswers;
  late String rightAnswer;
  late String category;
  Question(
    this.questionTitle,
    this.wrongAnswers,
    this.rightAnswer,
    this.category,
  );
  Question.fromJson();
}
