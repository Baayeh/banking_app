import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 100,
                ),
              ),
              Container(
                child: Text(
                  'CentralBanking',
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Divider()
            ],
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.crop_free),
              title: Text(
                'Scan To Pay',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.fingerprint),
              title: Text(
                'Login Settings',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'Password Reset',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                'Shipping Address',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text(
                'Reset PIN',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                'Support/Enquiry',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'FAQs',
                style: TextStyle(fontSize: 17, color: Colors.blue[900]),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 18,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 0),
              child: Text(
                'LOGOUT',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 3, fontSize: 20),
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue[900], elevation: 3),
          )
        ],
      ),
    );
  }
}
