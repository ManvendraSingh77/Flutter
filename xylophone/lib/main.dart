import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  Expanded button(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: (() {
          AudioPlayer player = AudioPlayer();
          player.play(AssetSource('note$soundNumber.wav'));
        }),
        style: TextButton.styleFrom(backgroundColor: color),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(Colors.red, 1),
              button(Colors.orange, 2),
              button(Colors.yellow, 3),
              button(Colors.green, 4),
              button(Colors.teal, 5),
              button(Colors.blue, 6),
              button(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
