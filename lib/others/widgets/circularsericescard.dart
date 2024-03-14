import 'dart:math';

import 'package:flutter/material.dart';

class CircularSercicecard extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function action;

  const CircularSercicecard({
    required this.title,
    required this.icon,
    required this.action,
    super.key,
  });

  @override
  State<CircularSercicecard> createState() => _CircularSercicecardState();
}
  final List<Color> _backgroundColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.amber,
    Colors.pink,
  ];

  // Method to select a random color from the list
  Color _getRandomColor() {
    final Random random = Random();
    return _backgroundColors[random.nextInt(_backgroundColors.length)];
  }

class _CircularSercicecardState extends State<CircularSercicecard> {
   final Color backgroundColor = _getRandomColor();
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        widget.action();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor:backgroundColor,
            radius: 30,
            child: Icon(widget.icon, size: 30),
          ),
          Text(
            widget.title,
            style:
                TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
