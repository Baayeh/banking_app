import 'package:banking_app/screens/home.dart';
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
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
            },
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

  Widget buildMomo() => Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: Text(
                'Bank & Momo Transfers',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Bank to own MTN Wallet'),
                    subtitle: Text('Move money to your linked MTN wallet'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Bank to any MTN Wallet'),
                    subtitle: Text('Transfer money to any MTN wallet'),
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
                    title: Text('MTN Wallet to My CentralBank Account'),
                    subtitle: Text(
                        'Transfer money from your linked MTN Wallet to your bank account'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 7,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('MTN Wallet to other CentralBank Account'),
                      subtitle: Text(
                          'Transfer money from your linked MTN Wallet to another CentralBank bank account'),
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('Bank to Telco Wallet'),
                      subtitle: Text(
                          'Instantly transfer funds from your bank account to other Telco wallets'),
                      onTap: () {},
                      hoverColor: Colors.amber,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget buildWallet() => Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: Text(
                'Central Wallet Transfers',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                    child: ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('Central Wallet to Central Wallet'),
                      subtitle: Text(
                          'Transfer money from your Wallet to another Wallet'),
                    ),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Bank to own Central Wallet'),
                    subtitle: Text('Move money to your Central wallet'),
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
                    title: Text('Bank to any Central Wallet'),
                    subtitle: Text('Transfer money to any Central wallet'),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
