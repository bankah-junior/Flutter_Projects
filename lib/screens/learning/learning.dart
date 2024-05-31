import 'package:flutter/material.dart';
import 'package:go_moon/widgets/bottom_navbar.dart';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text("Learning"),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}