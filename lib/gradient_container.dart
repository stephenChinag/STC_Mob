import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.color});
  // initializiation work
  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: color, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: StyledText("Hello Chinagorom")),
    );
  }
}
