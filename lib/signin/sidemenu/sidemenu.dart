import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

void main() {
  runApp(const MaterialApp(
    home: SideMenu(),
  ));
}

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  List<Widget> views = const [
    Center(
      child: Text('Calender'),
    ),
    Center(
      child: Text('Payment Methods'),
    ),
    Center(
      child: Text('Address'),
    ),
    Center(
      child: Text('Notifications'),
    ),
    Center(
      child: Text('Offers'),
    ),
    Center(
      child: Text('Refer a Friend'),
    ),
    Center(
      child: Text('Support'),
    ),
    Center(
      child: Text('Rate Us'),
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.calendar_month,
                label: 'Calender',
              ),
              SideNavigationBarItem(
                icon: Icons.payment,
                label: 'Payment Methods',
              ),
              SideNavigationBarItem(
                icon: Icons.area_chart,
                label: 'Address',
              ),
              SideNavigationBarItem(
                icon: Icons.notifications,
                label: 'Notifications',
              ),
              SideNavigationBarItem(
                icon: Icons.local_offer,
                label: 'Offers',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Refer a Friend',
              ),
              SideNavigationBarItem(
                icon: Icons.support,
                label: 'Support',
              ),
              SideNavigationBarItem(
                icon: Icons.star,
                label: 'Rate Us',
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
              },
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.purple, // Customize the background color
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://example.com/profile-image.jpg'), // Replace with your image URL
                  ),
                  SizedBox(height: 8), // Added space between image and text
                  // Profile Info
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  // Add any other profile-related widgets as needed
                ],
              ),
            ),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          ),
        ],
      ),
    );
  }
}
