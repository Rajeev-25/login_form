import 'package:flutter/material.dart';
import 'package:login_form/login.dart';
import 'package:login_form/password.dart';
import 'package:login_form/homePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'login': (context) => MyLogin(),
      'password': (context) => MyPassword(),
      'homePage': (context) => MyHome(),

    },
  ));
}


