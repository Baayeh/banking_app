import 'package:flutter/material.dart';
import 'package:banking_app/sections/sidebar.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: SideBar(),
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('My History'),
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
                        title: Text('Paid Invoices'),
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
                        title: Text('Unpaid Invoices'),
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
                        title: Text('Visa Payments'),
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
                        title: Text('Funds Transfers'),
                        trailing: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            '63',
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
                        title: Text('Tokens'),
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
                      height: 10,
                      color: Colors.blue[900],
                      indent: 70,
                    ),
                    ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('Split Bills'),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.blue[900],
                      indent: 70,
                    ),
                    ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('Shell Card TopUps'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
