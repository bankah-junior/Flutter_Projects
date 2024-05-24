import 'package:flutter/material.dart';
import 'package:go_moon/screens/welcome/brand.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lambda',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Brand(),
    );
  }
}
