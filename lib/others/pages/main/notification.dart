import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Center(
        child: Text("Notification"),
      ),
    );
  }
}