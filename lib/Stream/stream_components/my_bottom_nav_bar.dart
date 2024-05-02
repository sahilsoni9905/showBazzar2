import 'package:flutter/material.dart';

import 'package:show_bazzar/Settings/my_profile/screens/my_profile_screen.dart';
import 'package:show_bazzar/Stream/stream_pages/stream_home_page.dart';

import 'package:show_bazzar/reels/reels_page.dart';

class myBottomNavBar extends StatefulWidget {
  const myBottomNavBar({super.key});

  @override
  State<myBottomNavBar> createState() => _myBottomNavBarState();
}

class _myBottomNavBarState extends State<myBottomNavBar> {
  int _selectedIndex = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  final List<Widget> _pages = [
    // Stream watch page
    const StreamHomePage(),

    // steam reels page
    const ReelsPage(),

    // steam profile page
    const myProfile(),
  ];
  void pageUpdate(int a) {
    setState(() {
      _selectedIndex = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF6552FE),
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        iconSize: 28,
        onTap: pageUpdate,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              child: const Icon(Icons.home_outlined),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              child: const Icon(Icons.video_collection_outlined),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              child: const Icon(Icons.person_2_outlined),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
