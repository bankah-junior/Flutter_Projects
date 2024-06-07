// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_moon/screens/chat/chat.dart';
import 'package:go_moon/screens/discover/discover.dart';
import 'package:go_moon/screens/home/home.dart';
import 'package:go_moon/screens/learning/learning.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTabIndex,
        children: const [
          Home(),
          Discover(),
          Learning(),
          Chat(),
        ],
      ),
      bottomNavigationBar: Padding(
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
          activeColor: const Color.fromARGB(
              255, 71, 198, 143), // selected icon and text color
          iconSize: 30, // tab button icon size
          tabBackgroundColor: const Color.fromARGB(255, 255, 255, 255), // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: [
            // ignore: prefer_const_constructors
            GButton(
              icon: Icons.home,
              text: '',
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 0;
                });
              },
            ),
            GButton(
              icon: Icons.find_in_page,
              text: '',
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 1;
                });
              },
            ),
            GButton(
              icon: Icons.book,
              text: '',
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 2;
                });
              },
            ),
            GButton(
              icon: Icons.chat_sharp,
              text: '',
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
