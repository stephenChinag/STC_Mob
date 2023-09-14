import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  // initializiation work
  final Color color1;
  final Color color2;
  var activeImage = "assets/images/dice-6.png";

  // event trigger Button
  void rollDice() {
    activeImage = "assets/images/dice-3.png";
    // ignore: avoid_print
    print("Changing Image...");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
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
