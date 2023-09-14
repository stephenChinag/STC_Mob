import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randomDice = 2;
  var activeImage = "assets/images/dice-6.png";

  rollDice() {
    setState(() {
      randomDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$randomDice.png",
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(31, 249, 6, 6),
              padding: const EdgeInsets.all(24),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              textStyle: const TextStyle(fontSize: 39)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
