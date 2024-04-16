// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// class myBottomNavBar extends StatelessWidget {
//   void Function(int)? onTabChange;
//   myBottomNavBar({super.key, required this.onTabChange});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       color: Colors.black,
//       // padding: EdgeInsets.symmetric(horizontal: 6),
//       child: GNav(
//         color: Colors.black,
//         activeColor: Colors.red,
//         // tabActiveBorder: Border.all(color: Colors.grey),
//         tabBackgroundColor: Color.fromARGB(255, 23, 26, 27),
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         onTabChange: (value) => onTabChange!(value),
//         tabs: [
//           GButton(
//             icon: Icons.home_outlined,
//             iconColor: Colors.white,
//             iconSize: 30,
//             // text: 'Home',
//             // textColor: Colors.white,
//           ),
//           GButton(
//             icon: Icons.play_circle_outlined,
//             iconColor: Colors.white,
//             iconSize: 30,
//             // text: 'Reels',
//             // textColor: Colors.white,
//           ),
//           GButton(
//             icon: Icons.person_2_outlined,
//             iconColor: Colors.white,
//             iconSize: 30,
//             // text: 'Profile',
//             // textColor: Colors.white,
//           )
//         ],
//       ),
//     );
//   }
// }
