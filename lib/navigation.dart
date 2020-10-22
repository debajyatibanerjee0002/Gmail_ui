import 'package:flutter/material.dart';
import 'package:gmail_ui/google_meet/screens/home_page.dart';
import 'package:gmail_ui/screens/home_page.dart';

class NavigationPart extends StatefulWidget {
  @override
  _NavigationPartState createState() => _NavigationPartState();
}

class _NavigationPartState extends State<NavigationPart> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    HomePageOne(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            title: Text(
              'Mail',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            // label: '99+',
            icon: Icon(
              Icons.video_call_outlined,
              size: 30,
            ),
            title: Text(
              'Meet',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
