import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = "assets/images/dice-6.png";

  rollDice() {
    setState(() {
      activeImage = "assets/images/dice-4.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(31, 249, 6, 6),
              padding: const EdgeInsets.all(24),
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 39)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
