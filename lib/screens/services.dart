import 'package:banking_app/screens/home.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
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
                text: 'MY PORTFOLIO',
              ),
              Tab(
                text: 'E-SERVICES',
              ),
              Tab(
                text: 'CHEQUES',
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
          title: Text('Bank Services'),
        ),
        body: TabBarView(
          children: [buildPortfolio(), buildEservices(), buildCheques()],
        ),
      ),
    );
  }

  Widget buildPortfolio() => Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Loan Calculator'),
                    subtitle: Text('Pre-calculate your loan interest payments'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('My Loans'),
                    subtitle:
                        Text('View your loan balances, schedule and more'),
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
                    title: Text('My TBills'),
                    subtitle: Text(
                        'View your treasury bill info, accrued interest and current principal details'),
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
                    title: Text('My Investments'),
                    subtitle: Text(
                        'View your Supersave, CIP, Fixed Deposits details'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('My Call Deposits'),
                    subtitle: Text('View your call deposits details'),
                  )
                ],
              ),
            )
          ],
        ),
      );

  Widget buildEservices() => Padding(
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
                    title: Text('E-Alert Subscription'),
                    subtitle: Text(
                        'Activate SMS and Email notifications on your account'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('E-statement Subscription'),
                    subtitle: Text('Subscribe for your monthly statements'),
                  )
                ],
              ),
            )
          ],
        ),
      );

  Widget buildCheques() => Padding(
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
                    title: Text('Cheque Book Request'),
                    subtitle: Text('Request for a new cheque book'),
                  ),
                  Divider(
                    height: 5,
                    color: Colors.blue[900],
                    indent: 70,
                  ),
                  ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('Stop Cheque'),
                    subtitle: Text('Stop your cheque'),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
