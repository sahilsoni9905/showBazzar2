// import 'package:flutter/material.dart';
// import 'package:project/global_vaiables.dart';
// import 'package:project/payments/screens/lanuages_screen.dart';
// import 'package:project/payments/screens/notifications.dart';
// import 'package:project/payments/screens/setting_screen.dart';
// import 'package:project/payments/screens/transaction_history.dart';
//
// class homeDrawer extends StatelessWidget {
//   const homeDrawer({super.key});
//   void changeScreenToNotification(BuildContext context) {
//     Navigator.pushNamed(context, NotificationScreen.routeName);
//   }
//
//   void changeScreenToLanguage(BuildContext context) {
//     Navigator.pushNamed(context, LanguageScreen.routeName);
//   }
//
//   void changeScreenToTransactionScreen(BuildContext context) {
//     Navigator.pushNamed(
//       context, TransactionScreen.routeName, // here giving error
//     );
//   }
//
//   void changeScreenToSettingsScreen(BuildContext context) {
//     Navigator.pushNamed(
//       context, SettingScreen.routeName, // here giving error
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: backGroundColor,
//       child: Center(
//         child: Column(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                       'https://wallup.net/wp-content/uploads/2018/09/28/684893-color-pattern.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                     ),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment
//                           .center, // Align the Column vertically
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Sahil Soni',
//                           style: TextStyle(
//                               fontSize: 25,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Text(
//                           'id : 217XXXXXXX',
//                           style: TextStyle(color: Colors.white),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               leading: Icon(
//                 Icons.person_2_outlined,
//                 size: 30,
//               ),
//               title: Text(
//                 'Account',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 changeScreenToNotification(context);
//               },
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               leading: Icon(
//                 Icons.notifications_active_outlined,
//                 size: 30,
//               ),
//               title: Text(
//                 'Notification',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 changeScreenToSettingsScreen(context);
//               },
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               leading: Icon(
//                 Icons.settings_outlined,
//                 size: 30,
//               ),
//               title: Text(
//                 'Settings',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 changeScreenToTransactionScreen(context);
//               },
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               leading: Icon(
//                 Icons.wallet_outlined,
//                 size: 30,
//               ),
//               title: Text(
//                 'Payments',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 changeScreenToLanguage(context);
//               },
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               leading: Icon(
//                 Icons.language_outlined,
//                 size: 30,
//               ),
//               title: Text(
//                 'Language',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//               leading: Icon(
//                 Icons.chat_outlined,
//                 size: 30,
//               ),
//               title: Text(
//                 'Ask a Question',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
