import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosedAnswers});
final List<String> choosedAnswers;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];

    for(int i = 0; i<choosedAnswers.length; i++){
      summary.add({
        'question-index': i,
        'question-text': questions[i].text,
        'question-answe': questions[i].answers[0],
        'user-answer': choosedAnswers[i], 
      });
    }
    print(summary);
    return summary;
  }

  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("You have answered x and y correctly"),
          const SizedBox(height: 20),
          const Text("List of answers etc"),
          const SizedBox(height: 20),
          TextButton(onPressed: () {}, child: const Text("Restart"))
        ]),
      ),
    );
  }
}
