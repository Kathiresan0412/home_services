import 'package:flutter/material.dart';
import 'package:ddd/onboardings/one.dart';
import 'package:ddd/Login/login.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Services',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignIn(),
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
          builder: (context) => SignIn(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;
    Color myColor = const Color(0xFF6759FF);

    return Scaffold(
      body: GestureDetector(
        child: Container(
          color: myColor,
          child: Center(
            child: ResponsiveBuilder(
              builder: (context, sizingInformation) {
                return SizedBox(
                  width: minSide * 2,
                  height: minSide * 2,
                  child: Image.asset(
                    'images/Group.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
