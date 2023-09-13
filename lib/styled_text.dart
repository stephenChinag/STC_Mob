import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(context) {
    return const Text(
      "Time to Goo",
      style: TextStyle(
          fontSize: 24.0,
          color: Color.fromARGB(255, 241, 255, 246),
          decoration: TextDecoration.underline),
    );
  }
}
