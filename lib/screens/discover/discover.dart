import 'package:flutter/material.dart';
import 'package:go_moon/widgets/bottom_navbar.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text("Discover"),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}