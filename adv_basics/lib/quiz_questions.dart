import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/start_page.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizQuestions extends StatefulWidget{
  const QuizQuestions({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  _QuizQuestionState createState() {
    return _QuizQuestionState();
  }
}
class _QuizQuestionState extends State<QuizQuestions>{

  var currentIndex = 0;
  void answerQuestion(String answer){
    widget.onSelectAnswer(answer);
    setState(() {
      currentIndex++;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              currentQuestion.text,
               style: GoogleFonts.lato(color: Color.fromARGB(255, 131, 194, 246) , fontSize: 24),
               textAlign: TextAlign.center,
               ),
            const SizedBox(height: 20,),
            ...currentQuestion.getShuffeldAnswers().map((answer){
                return AnswerButton(text: answer, onPress: (){
                  answerQuestion(answer);
                });
            }) 
            
          ],
        
        ),
      ),
    );
  }
}