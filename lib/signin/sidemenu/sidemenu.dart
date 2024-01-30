import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

class sidemenu extends StatefulWidget {
  const sidemenu({super.key});

  @override
  State<sidemenu> createState() => sidemenuState();
}

class sidemenuState extends State<sidemenu> {
  List<Widget> views = const [
    Center(
      child: Text('Dashboard'),
    ),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            toggler: SideBarToggler(
                expandIcon: Icons.keyboard_arrow_left,
                shrinkIcon: Icons.keyboard_arrow_right,
                onToggle: () {
                  print('Toggle');
                }),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  
  }
  }