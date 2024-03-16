import 'package:flutter/material.dart';
import 'package:hello_world/pages/about.dart';
import 'package:hello_world/pages/contact.dart';
import 'package:hello_world/pages/home.dart';
import 'package:hello_world/pages/welcome.dart';

void main() => runApp(MaterialApp(initialRoute: '/home', routes: {
      '/': (context) => const Welcome(),
      '/home': (context) => const Home(),
      '/about': (context) => const About(),
      '/contact': (context) => const Contact(),
    }));
