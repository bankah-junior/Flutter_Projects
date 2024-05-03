import 'package:flutter/material.dart';
import 'package:flutter_masterclass/pages/home.dart';
import 'package:flutter_masterclass/pages/login.dart';
import 'package:flutter_masterclass/pages/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Login(),
      '/register': (context) => const Register(),
      '/home': (context) => const Home(),
    }
  ));
}
