import 'package:flutter/material.dart';
import 'package:home_services/signin/navbar/calender.dart';
import 'package:home_services/signin/navbar/payment.dart';

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
    Calendar(),
    Payment(),
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
      appBar: AppBar(
        // title:  const Text('Current Location')
        
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://example.com/profile-image.jpg'), // Replace with your image URL
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Calender'),
              onTap: () {
                navigateTo(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payment Methods'),
              onTap: () {
                navigateTo(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.area_chart),
              title: const Text('Address'),
              onTap: () {
                navigateTo(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                navigateTo(3);
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_offer),
              title: const Text('Offers'),
              onTap: () {
                navigateTo(4);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Refer a Friend'),
              onTap: () {
                navigateTo(5);
              },
            ),
            ListTile(
              leading: const Icon(Icons.support),
              title: const Text('Support'),
              onTap: () {
                navigateTo(6);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rate Us'),
              onTap: () {
                navigateTo(7);
              },
            ),
          ],
        ),
      ),
      body: views.elementAt(selectedIndex),
    );
  }

  void navigateTo(int index) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context); // Close the drawer after selecting an item
    });
  }
}
