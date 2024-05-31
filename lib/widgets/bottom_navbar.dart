import 'package:flutter/material.dart';
import 'package:go_moon/screens/chat/chat.dart';
import 'package:go_moon/screens/discover/discover.dart';
import 'package:go_moon/screens/home/home.dart';
import 'package:go_moon/screens/learning/learning.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
      child: GNav(
          rippleColor: const Color.fromARGB(255, 71, 198, 143)
              .withAlpha(0), // tab button ripple color when pressed
          hoverColor: const Color.fromARGB(255, 71, 198, 143)
              .withAlpha(0), // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 30,
          tabActiveBorder: Border.all(
              color: Colors.black.withAlpha(0), width: 1), // tab button border
          tabBorder: Border.all(
              color: Colors.grey.withAlpha(0), width: 1), // tab button border
          tabShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.0), blurRadius: 8)
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 400), // tab animation duration
          gap: 5, // the tab button gap between icon and text
          color: Colors.black, // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 30, // tab button icon size
          tabBackgroundColor: const Color.fromARGB(255, 71, 198, 143), // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: [
            // ignore: prefer_const_constructors
            GButton(
              icon: Icons.home,
              text: '',
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            GButton(
              icon: Icons.find_in_page,
              text: '',
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Discover()));
              },
            ),
            GButton(
              icon: Icons.book,
              text: '',
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Learning()));
              },
            ),
            GButton(
              icon: Icons.chat_sharp,
              text: '',
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Chat()));
              },
            )
          ]),
    );
  }
}