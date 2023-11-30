class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuledList = List.of(answers);
    shuledList.shuffle();
    return shuledList;
  }
}
