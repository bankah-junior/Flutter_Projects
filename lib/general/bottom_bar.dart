import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bible Studies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Home Cell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Developer',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: const Color.fromARGB(255, 3, 11, 163),
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/bibleStudies');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/homeCell');
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/developer');
              break;
          }
        },
    );
  }
}