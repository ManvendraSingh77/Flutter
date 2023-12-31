import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    Key? key,
    required this.colour,
    required this.cardChild,
    required this.onPress,
  }) : super(key: key);

  late Color colour;
  late Widget cardChild;
  late VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
