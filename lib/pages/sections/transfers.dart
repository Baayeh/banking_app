import 'package:flutter/material.dart';

class Transfers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          //backgroundColor: Colors.blue[900],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[600], Colors.blue[900]],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(
                text: 'BANK/GIP',
              ),
              Tab(
                text: 'MOMO',
              ),
              Tab(
                text: 'WALLET',
              )
            ],
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Fund Transfers'),
        ),
        body: TabBarView(
          children: [buildBank(), buildMomo(), buildWallet()],
        ),
      ),
    );
  }

  Widget buildBank() => Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: Text(
                'Bank, GIP & ACH Transfers',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Intra Account Transfers'),
                    subtitle:
                        Text('Move money to own account linked to the App'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Inter Account Transfers'),
                    subtitle: Text('Move money to another CalBank account'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Inter Bank Transfers (ACH)'),
                    subtitle: Text(
                        'Transfer money to any bank account. Choose between Express and Regular transfer modes.'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Instant Bank to Other Bank'),
                    subtitle: Text('Instantly move money to any bank'),
                  )
                ],
              ),
            )
          ],
        ),
      );

  Widget buildMomo() => Center(
        child: Text('Text2'),
      );

  Widget buildWallet() => Center(
        child: Text('Text3'),
      );
}
