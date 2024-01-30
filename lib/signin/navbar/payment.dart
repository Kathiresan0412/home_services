import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => PaymentState();
}

class PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Row(
            children: [
              Text('Add Card List'),
              Row(
                children: [Text('Add New'),Icon(Icons.add)],
              )
            ],
          )
        ],
      ),
    );
  }
}
