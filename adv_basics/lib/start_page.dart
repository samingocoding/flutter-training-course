import 'package:flutter/material.dart';

class StartPage extends StatelessWidget{
  const StartPage({super.key});

  @override
  Widget build(context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300,),
          const SizedBox(height: 20,),
          const Text('Learn Flutter the fun way', 
          style: TextStyle(
            fontSize: 24,
            color: Colors.white
          )),
          const SizedBox(height: 20,),
          OutlinedButton(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
           child: const Text(
            'Start Quiz',
          ))

        ],
      )
    );
  }
}