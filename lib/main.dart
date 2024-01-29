import 'package:flutter/material.dart';
import 'package:home_services/onboardings/one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Services',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash(title: 'Home Services Page'),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key, required this.title});

  final String title;

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Add a delay or any condition to decide when to navigate to OnboardingOne
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingOne(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;

    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent[400],
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              SizedBox(
                width: minSide * 2,
                height: minSide * 2,
                child: Row(
                  children: [
                    Image.asset(
                      'images/Group.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const Text("Door Hub",
                  style: TextStyle(
                    fontSize: 36.70110321044922,
                    fontWeight: FontWeight.w800,
                    color: Colors.white
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
