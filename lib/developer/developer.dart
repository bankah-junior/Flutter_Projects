import 'package:flutter/material.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';

class Developer extends StatefulWidget {
  const Developer({super.key});

  @override
  State<Developer> createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Developer"),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}