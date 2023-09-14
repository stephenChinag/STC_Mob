import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  // initializiation work
  final Color color1;
  final Color color2;

  // event trigger Button
  // void rollDice() {
  //   activeImage = "assets/images/dice-3.png";
  //   // ignore: avoid_print
  //   print("Changing Image...");
  // }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.color});
//   // initializiation work
//   final List<Color> color;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: color, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(child: StyledText("Sleep Tired to wake up late")),
//     );
//   }
// }
