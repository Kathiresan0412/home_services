import 'package:flutter/material.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context,index){
    
       return Container(
        height: 50,
        color: Colors.amber,
        child: Center(child: Text('helooo'),
      )
       );
    });;
  }
}