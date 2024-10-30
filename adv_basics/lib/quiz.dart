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

  var activeScreen;
  
  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }
  void switchScreen(){
    setState((){ 
      activeScreen = 'start-questions';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    //Conditional with if
    Widget widgetScreen = StartPage(switchScreen);
    if(activeScreen == 'start-questions'){
      widgetScreen = const QuizQuestions();
    }

    return MaterialApp(
      home : Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 0, 61, 245), Color.fromARGB(255, 73, 132, 233)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          // child: activeScreen == 'start-screen'? StartPage(switchScreen): const QuizQuestions(),  // Using teneray operation comperator
          child: widgetScreen,

      )
    ));
  }
}