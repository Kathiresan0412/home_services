import 'package:flutter/material.dart';
import 'package:home_services/onboardings/one.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Services',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash(title: 'Home Services  Page'),
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
  // void navigateToOtherUI() {
  //   // Navigate to another UI, you can use Navigator.push or any other navigation method
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => const OnboardingOne()),
  //   );
  //   print('Navigate to another UI');
  // }

  @override
  Widget build(BuildContext context) {
    double minSide = MediaQuery.of(context).size.shortestSide * 0.1;
    Color myColor = const Color(0xFF6759FF);

    return Scaffold(
        body: GestureDetector(
          // onTap: navigateToOtherUI,
            child: Container(
                color: myColor,
                child: Center(
                  child: ResponsiveBuilder(
                    builder: (context, sizingInformation) {
                      return SizedBox(
                        width: minSide,
                        height: minSide,
                        child: Image.asset(
                          'images/Group.jpg',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ))));
  }
}
