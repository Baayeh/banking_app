import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[600],
                        blurRadius: 8,
                        offset: Offset(0, 6))
                  ],
                )),
            SizedBox(height: ,),
            buildFirstCard(),
          ],
        ),
      ),
    );
  }

  Widget buildFirstCard() => Card(
        shadowColor: Colors.grey[600],
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: EdgeInsets.all(10),
        ),
      );
}
