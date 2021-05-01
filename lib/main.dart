import 'package:banking_app/screens/authenticate/auth_home.dart';
import 'package:banking_app/screens/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/auth_home': (context) => AuthHome(),
    },
  ));
}
