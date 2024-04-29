import 'package:flutter/material.dart';
import 'package:flutter_masterclass/delivery/delivery.dart';
import 'package:flutter_masterclass/home/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/delivery': (context) => const Delivery(),
    }
  ));
}
