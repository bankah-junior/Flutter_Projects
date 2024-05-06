import 'package:flutter/material.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';

class HomeCell extends StatefulWidget {
  const HomeCell({super.key});

  @override
  State<HomeCell> createState() => _HomeCellState();
}

class _HomeCellState extends State<HomeCell> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Cell"),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}