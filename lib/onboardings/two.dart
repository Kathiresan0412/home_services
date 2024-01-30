import 'package:flutter/material.dart';
import 'package:home_services/onboardings/three.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;

    return Container(
      color: Theme.of(context).colorScheme.background,
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
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(100)),
                            color: Color.fromARGB(255, 229, 115, 115),
                          ),)
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: minSide * 0.35, right: minSide * 0.5),
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
                                fontWeight: FontWeight.normal,
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
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Stack(
                    children: [
                      SizedBox(
                        // color: Colors.yellow,
                        width: minSide * 7,
                        height: minSide * 10,
                        child: Center(
                          child: SizedBox(
                            // color: Colors.red[700],
                            width: minSide * 5.5,
                            height: minSide * 8.5,
                            child: Center(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(70.0),
                                  topRight: Radius.circular(70.0),
                                  bottomLeft: Radius.circular(70.0),
                                  bottomRight: Radius.circular(70.0),
                                ),
                                child: Image.asset(
                                  'images/image_boy.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Positioned(
              top: minSide * 12.5,
              left: minSide * 4,
              child:  Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Column(
                      children: [
                        Text(
                          '.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: i == 1
                                  ? Colors.deepPurple
                                  : const Color.fromARGB(255, 235, 210, 249),
                              decoration: TextDecoration.none,
                              fontSize: 60),
                        )
                      ],
                    ),
                
                ],
              ),
            ),
            Positioned(
              bottom: minSide * 5.5,
              left: minSide * 2,
              child:  Row(
                children: [
                  Text(
                    " Plumber & expart \nnearby you",
                    textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ) ??
                            const TextStyle(),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: minSide * 4.0,
              left: minSide * 1,
              child:  Row(
                children: [
                  Text(
                    "Lorem ipsum is a placeholder text commonly \nused to demonstrate the visual.",
                   textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 20,
                                ) ??
                            const TextStyle(),
                  ),
                ],
              ),
            ),
             Positioned(
              bottom: minSide * 1.5,
              left: minSide * 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingThree(),
                    ),
                  );
                },
                child: Container(
                  width: minSide * 1.5,
                  height: minSide * 1.5,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent[400],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Add more widgets to the Stack if needed
          ],
        ),
      ),
    );
  }
}
