import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildBanner(),
              SizedBox(
                height: 10,
              ),
              buildFirstCard(),
              SizedBox(
                height: 10,
              ),
              buildSecondCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBanner() => Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.grey[600],
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/banner.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );

  Widget buildFirstCard() => Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.grey[600],
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 220,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue[600], Colors.blue[900]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.receipt_long,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        child: Text(
                          'Snap Account',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.payments,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        child: Text(
                          'Payments',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        child: Text(
                          'Fx Rates',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.card_membership,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        child: Text(
                          'Token Services',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.credit_card,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        child: Text(
                          'Card Services',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.call_split,
                        color: Colors.white,
                        size: 50,
                      ),
                      Container(
                        child: Text(
                          'Split Pay',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildSecondCard() => Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.grey[600],
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: EdgeInsets.all(15),
          height: 220,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.transfer_within_a_station,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.blue[900]),
                      ),
                      Container(
                        child: Text(
                          'Transfers',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.account_balance,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.blue[900]),
                      ),
                      Container(
                        child: Text(
                          'Accounts',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.blue[900]),
                      ),
                      Container(
                        child: Text(
                          'Services',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.credit_card,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.blue[900]),
                      ),
                      Container(
                        child: Text(
                          'CalPay',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.blue[900]),
                      ),
                      Container(
                        child: Text(
                          'Virtual Shops',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.crop_free,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.blue[900]),
                      ),
                      Container(
                        child: Text(
                          'Scan To Pay',
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
