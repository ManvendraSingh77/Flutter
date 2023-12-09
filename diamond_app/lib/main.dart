import 'package:flutter/material.dart';

void main() {
  runApp(const Diamond_app());
}

class Diamond_app extends StatelessWidget {
  const Diamond_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.black, child: const Text('Diamond app')),
        ),
        body: Image.asset("images/diamond.png", alignment: Alignment.center),
      ),
    );
  }
}
