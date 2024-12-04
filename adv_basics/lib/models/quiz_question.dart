class QuizQuestion{
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffeldAnswers(){
    final shuffeled = List.of(answers);
    shuffeled.shuffle();
    return shuffeled;
  }
}