import 'package:flutter/material.dart';
import 'package:banking_app/pages/loading.dart';
import 'package:banking_app/pages/authenticate/auth_home.dart';
import 'package:banking_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/auth_home': (context) => AuthHome(),
    },
  ));
}
