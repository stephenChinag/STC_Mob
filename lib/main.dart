import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  GradientContainer() {
    // initializiation work
  }
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 39, 13, 5),
          Color.fromARGB(26, 5, 12, 40)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          "Dante Morning",
          style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 241, 255, 246),
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
