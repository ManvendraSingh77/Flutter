import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quizz.dart';

quizz quiz = quizz();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Quizz(),
        ),
      ),
    );
  }
}

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Icon> tracker = [];

  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "Finished!",
      desc: "You\'ve reached the end of the quiz.",
    ).show();
  }

  void checkAnswer(String value) {
    setState(() {
      if (quiz.isFinished()) {
        _onBasicAlertPressed(context);
        quiz.resetCounter();
        tracker = [];
      } else if (quiz.getAnswer().toString() == value.toLowerCase()) {
        tracker.add(
          const Icon(
            Icons.check,
            color: Colors.green,
            size: 30,
          ),
        );
      } else {
        tracker.add(
          const Icon(
            Icons.close,
            color: Colors.red,
            size: 30,
          ),
        );
      }
      quiz.nextQuestion();
    });
  }

  TextButton button(String value, Color color) {
    return TextButton(
      onPressed: () {
        checkAnswer(value);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      child: Text(
        value,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quiz.getQuestion(),
                  style: const TextStyle(color: Colors.white, fontSize: 35.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: button('TRUE', Colors.green),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: button('FALSE', Colors.red),
            ),
          ),
          Row(
            children: tracker,
          )
        ],
      ),
    );
  }
}
