import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const AnswerApp());
}

class AnswerApp extends StatelessWidget {
  const AnswerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue,
        body: const ShowAnswer(),
      ),
    );
  }
}

class ShowAnswer extends StatefulWidget {
  const ShowAnswer({super.key});

  @override
  State<ShowAnswer> createState() => _ShowAnswerState();
}

class _ShowAnswerState extends State<ShowAnswer> {
  int ballNumber = 1;

  void randomNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: TextButton(
            onPressed: (() {
              randomNumber();
            }),
            child: Image.asset(
              'images/ball$ballNumber.png',
            ),
          ),
        )
      ],
    );
  }
}
