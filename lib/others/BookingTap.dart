import 'package:flutter/material.dart';  
 
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: DefaultTabController(  
        length: 2,  
        child: Scaffold(  
          appBar: AppBar(    
            bottom: TabBar(  
              tabs: [  
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),  
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")  
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              Container(
                child: Text("hi1"),
              ),  
             Container(
                child: Text("hi2"),
              ),  
              Container(
                child: Text("hi3"),
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  