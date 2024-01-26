import 'package:flutter/material.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;

    return SafeArea(
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                        width: minSide,
                        height: minSide,
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            'images/Ellipse.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                      child: Text('skip',
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ))),
                ],
              )
            ],
          ),
          // Add more widgets to the Stack if needed
        ],
      ),
    );
  }
}
