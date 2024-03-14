import 'package:flutter/material.dart';
import 'package:home_services/onboardings/one.dart';
import 'package:home_services/others/pages/sub/service_detail.dart';


import 'package:home_services/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Share Demo',
      initialRoute: '/',
      routes:routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Servicedetailpage(),
     
    );
  }
}

