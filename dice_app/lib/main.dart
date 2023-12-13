import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice Roll',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftsidenumber = 1, rightsidenumber = 1;

  void randomNumber() {
    setState(() {
      leftsidenumber = Random().nextInt(6) + 1;
      rightsidenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    randomNumber();
                  },
                  child: Image.asset('images/dice$leftsidenumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    randomNumber();
                  },
                  child: Image.asset('images/dice$rightsidenumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
