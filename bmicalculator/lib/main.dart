import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          elevation: 2.0,
          color: Color(0xFF0A0D22),
          shadowColor: Color(0xff070A1A),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}
