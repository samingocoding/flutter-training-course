import 'dart:math';
import 'package:flutter/material.dart';

//For optimal solution this object placed out of Statefull Widget 
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;
  void rollDice() {
    //.. code here
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      print("Changing image");
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
