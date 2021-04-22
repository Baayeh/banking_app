import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Image(image: AssetImage('assets/images/banner.jpg')),
          ),
        ],
      ),
    );
  }
}
