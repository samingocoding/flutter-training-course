import 'package:flutter/material.dart';

class StartPage extends StatelessWidget{
  const StartPage(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
          ), // You can as well add the Opacity widget
          const SizedBox(height: 20,),
          const Text('Learn Flutter the fun way', 
          style: TextStyle(
            fontSize: 24,
            color: Colors.white
          )),
          const SizedBox(height: 20,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined,weight: 1,),
           label: const Text(
            'Start Quiz',
          ))

        ],
      )
    );
  }
}