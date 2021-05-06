import 'package:flutter/material.dart';

import 'home.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('My Money'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text('Crentral Account(s)'),
                        trailing: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Divider(
                      height: 5,
                      color: Colors.blue[900],
                      indent: 70,
                    ),
                    ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text('My Cards'),
                        trailing: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Divider(
                      height: 5,
                      color: Colors.blue[900],
                      indent: 70,
                    ),
                    ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text('MTN Mobile Money'),
                        trailing: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Divider(
                      height: 5,
                      color: Colors.blue[900],
                      indent: 70,
                    ),
                    ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text('Central Wallet'),
                        trailing: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Divider(
                      height: 7,
                      color: Colors.blue[900],
                      indent: 70,
                    ),
                    ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('Download Bank Statement'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
