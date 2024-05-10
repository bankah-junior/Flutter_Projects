import 'package:flutter/material.dart';
import 'package:hard_element/screens/home_view.dart';
import 'package:hard_element/screens/profile.dart';
import 'package:hard_element/screens/welcom_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "More",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.hdr_strong),
          label: "Workout",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.one_k),
          label: "Level",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.man),
          label: "Profile",
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFF40D876),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: const Color(0xFF232441),
      elevation: 5,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WelcomView()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
            break;
        }
      },
    );
  }
}
