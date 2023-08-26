import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  MaterialColor color;
  Icon icon;
  Text text;
  Card({required this.color, required this.text, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        icon,
        text,
      ]),
    );
  }
}
