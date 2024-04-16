import 'package:flutter/material.dart';
import 'package:show_bazzar/Screens/home_screen.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/home/screens/home_screen.dart';
import 'package:show_bazzar/Settings/my_profile/screens/my_profile_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/payment_profile.dart';
import 'package:show_bazzar/Settings/temporary_screen/not_ready_screen.dart';

class bottomBar extends StatefulWidget {
  static const RouteName = 'Landing-screen';
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const notReadyScreen(),
    const myProfile(),
  ];
  void pageUpdate(int a) {
    setState(() {
      _page = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: const Color.fromARGB(255, 136, 194, 242),
        unselectedItemColor: Colors.white,
        backgroundColor: backGroundColor,
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
