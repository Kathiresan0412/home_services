import 'package:flutter/material.dart';
import 'package:home_services/signin/signin.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({super.key});

  @override
  State<OnboardingThree> createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
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
                              color: i == 2
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
                    "Professional home \ncleaning",
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
              left: minSide * 3,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Signin(),
                    ),
                  );
                },
              child: Container(
                width: minSide * 5,
                height: minSide * 1.5,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35,
                      decoration: TextDecoration.none,
                    ),
                  ),
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
