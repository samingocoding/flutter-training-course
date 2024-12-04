import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key, required this.text, required this.onPress});

  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
    onPressed: onPress,
     child: Text(text, textAlign: TextAlign.center),
     style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      backgroundColor: const Color.fromARGB(255, 5, 86, 152),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40))
     ),
     );
  }
}