import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    Text('Home'),
    Text('Transfers'),
    Text('History'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      selectedItemColor: Colors.blue[900],
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz), label: 'Transfers'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
    );
  }
}
