import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

class QuizQuestions extends StatefulWidget{
  const QuizQuestions({super.key});

  @override
  _QuizQuestionState createState() {
    return _QuizQuestionState();
  }
}
class _QuizQuestionState extends State<QuizQuestions>{
  @override
  void setState(VoidCallback fn) {
  
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 0, 61, 245), Color.fromARGB(255, 73, 132, 233)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: const Text("Hello question"),
      )
    ));
  }
}