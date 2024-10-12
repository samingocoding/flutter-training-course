import 'package:first_app/gradient_colour.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColour(
          Colors.deepPurple,
        Colors.indigo),
      ),
    ),
  );
}
