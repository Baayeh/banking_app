//import 'package:banking_app/pages/authenticate/auth_home.dart';
import 'package:banking_app/pages/sections/dashboard.dart';
import 'package:banking_app/pages/sections/history.dart';
import 'package:banking_app/pages/sections/transfers.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/pages/sections/navbar.dart';
//import 'package:banking_app/pages/sections/tabBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [Dashboard(), Transfers(), History()];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('My Dashboard'),
          actions: [IconButton(icon: Icon(Icons.logout), onPressed: () {})],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue[900],
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.swap_horiz), label: 'Transfers'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ));
  }
}
