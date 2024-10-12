import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 0, 61, 245), Color.fromARGB(255, 73, 132, 233)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: StartPage()),
    ),
  ));
}
