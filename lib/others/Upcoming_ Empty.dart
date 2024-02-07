import 'package:flutter/material.dart';

class UpcomingEmpty extends StatefulWidget {
  const UpcomingEmpty({Key? key}) : super(key: key);

  @override
  State<UpcomingEmpty> createState() => _UpcomingEmptyState();
}

class _UpcomingEmptyState extends State<UpcomingEmpty> {
  
  @override
  Widget build(BuildContext context) {
     Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("helooo"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.grey[200],
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 5,
                    height: 30,
                    color: Color(0xFFCABDFF),
                    margin: EdgeInsets.only(right: 5),
                  ),
                  Text(
                    "Bookings",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: "Upcoming"),
                        Tab(text: "History"),
                        Tab(text: "Draft"),
                      ],
                    ),
                    Container(
                     
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: Colors.white,
                      ),
                      height:screenSize.height*0.7, // Set the height as per your design
                      child: Expanded(
                        child: TabBarView(
                          children: [
                            // Content for Upcoming Tab
                            FirstScreen(),

                            // Content for History Tab
                            SecondScreen(),

                            // Content for Draft Tab
                            ThirdScreen(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Upcoming Tab Content"),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("History Tab Content"),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Draft Tab Content"),
    );
  }
}

