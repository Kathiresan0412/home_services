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

    return Container(
      color: Colors.white,
      child: SafeArea(
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
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: minSide * 0.35),
                      child: SizedBox(
                        width: minSide * 1.75,
                        height: minSide * 0.75,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal[200],
                            borderRadius: BorderRadius.circular(minSide * 0.5),
                          ),
                          child: const Center(
                            child: Text(
                              'skip',
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        color: Colors.yellow,
                        width: minSide * 6,
                        height: minSide * 9,
                        child: Center(
                          child: Container(
                            color: Colors.red[700],
                            width: minSide * 4,
                            height: minSide * 6,
                            child: Center(
                              child: SizedBox(
                                child: Image.asset(
                                  'images/image_girl.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Add more widgets to the Stack if needed
          ],
        ),
      ),
    );
  }
}
