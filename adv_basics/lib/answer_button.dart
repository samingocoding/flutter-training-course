import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key, required this.text, required this.onPress});

  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
    onPressed: onPress,
     child: Text(text),
     style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      backgroundColor: Color.fromARGB(255, 5, 86, 152),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40))
     ),
     );
  }
}