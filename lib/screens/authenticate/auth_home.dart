import 'dart:ui';

import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'sign_up.dart';

class AuthHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/auth_home.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Welcome to',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Central Banking App',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: ElevatedButton(
                        child: Text('LOGIN'),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => SignIn()));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 70),
                            onPrimary: Colors.white,
                            primary: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80)),
                            textStyle:
                                TextStyle(letterSpacing: 3, fontSize: 16)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => SignUp()));
                        },
                        child: Text('REGISTER'),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            primary: Colors.white,
                            side: BorderSide(width: 1, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80)),
                            textStyle:
                                TextStyle(letterSpacing: 3, fontSize: 16)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                'Contact',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.my_location,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                'Locators',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.help,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                'FAQs',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
