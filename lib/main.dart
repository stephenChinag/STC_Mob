import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 212, 13, 13), Color.fromARGB(255, 95, 60, 60)),
      ),
    ),
  );
}
