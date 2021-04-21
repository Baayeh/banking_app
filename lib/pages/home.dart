import 'package:banking_app/pages/authenticate/auth_home.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/pages/sections/navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('My Dashboard'),
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: () {})],
      ),
    );
  }
}
