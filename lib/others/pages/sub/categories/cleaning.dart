import 'package:flutter/material.dart';
import 'package:home_services/others/widgets/heading.dart';
import 'package:home_services/others/widgets/searchbox.dart';

class Cleaing extends StatelessWidget {
  const Cleaing({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Heading(title: 'Cleaing'),
              const SizedBox(height: 10),
              const SearchBox(),
              const SizedBox(height: 10),
           
            ],
          ),
        ),
      ),
    );
  }
}
