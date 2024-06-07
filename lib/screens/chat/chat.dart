import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text("Chat"),
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}