import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 105, 98, 9),
            const Color.fromARGB(255, 56, 13, 13)),
      ),
    ),
  );
}
