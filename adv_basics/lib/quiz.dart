import 'package:adv_basics/quiz_questions.dart';
import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{

  Widget? activeScreen;
  
  @override
  void initState() {
    activeScreen = StartPage(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState((){ 
      activeScreen = const QuizQuestions();
    });
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
          child: activeScreen),
      )
    );
  }
}