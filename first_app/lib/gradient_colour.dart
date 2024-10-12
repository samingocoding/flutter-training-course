import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientColour extends StatelessWidget {
   const GradientColour(
    this.color1, 
    this.color2,
    {
    super.key,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: const Center(
          child: DiceRoller(),
        ));
  }
} 



// // Notes
// 1. Const is used to store the widget in memory for reference
// 2. Container widget
