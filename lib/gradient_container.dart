import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  // initializiation work
  final Color color1;
  final Color color2;

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
              "assets/images/dice-6.png",
              width: 150,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Press to roll a dice"),
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
