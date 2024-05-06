import 'package:flutter/material.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';

class BibleStudies extends StatefulWidget {
  const BibleStudies({super.key});

  @override
  State<BibleStudies> createState() => _BibleStudiesState();
}

class _BibleStudiesState extends State<BibleStudies> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Bible Studies"),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}