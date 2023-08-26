import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  var color;
  var icon;
  String text;

  CardItem(this.color, this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(icon,
                color: Colors.white, size: 40),
            Text( text,
                style: TextStyle(color: Colors.white)),
          ]),
    );
  }
}
