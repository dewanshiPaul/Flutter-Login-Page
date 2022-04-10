import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/register.dart';

void main() {
  runApp(MaterialApp(
    //initial page to come when app starts
    debugShowCheckedModeBanner: false,
    initialRoute:  'login',
    routes:  {
      'login': (context) =>  MyLogin(),
      'register': (context) => MyRegister()
    },
  )); //MaterialApp
}