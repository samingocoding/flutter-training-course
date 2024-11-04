import 'package:adv_basics/answer_button.dart';
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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question here ...", style: TextStyle(color: Colors.white ),),
          const SizedBox(height: 20,),
          AnswerButton(text: "Answer 1....", onPress: (){}),
          AnswerButton(text: "Answer 2....", onPress: (){}),
          AnswerButton(text: "Answer 3....", onPress: (){}),
          AnswerButton(text: "Answer 4....", onPress: (){}),
        ],

      ),
    );
  }
}