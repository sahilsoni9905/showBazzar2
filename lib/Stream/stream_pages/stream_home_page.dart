import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Stream/stream_components/my_bottom_nav_bar.dart';
import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';

import 'package:show_bazzar/Stream/stream_pages/search_page.dart';
import 'package:show_bazzar/Stream/stream_pages/stream_profile_page.dart';
import 'package:show_bazzar/Stream/stream_pages/stream_watch_page.dart';
import 'package:show_bazzar/Widgets/main_drawer.dart';

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // // the selected index to control the bottom nav bar
  // int _selectedIndex = 0;
  // // this method will update our selected index when the user taps on the bottom bar
  // void navigateBottomBar(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  //
  // // list of pages
  //
  // final List<Widget> _pages = [
  //   // Stream watch page
  //   const StreamWatchPage(),
  //
  //   // steam reels page
  //   const reelsPage(),
  //
  //   // steam profile page
  //   const StreamProfilePage()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StremColors.streamBackground,

      // bottom Navigation bar

      // app bar
      appBar: AppBar(
        backgroundColor: StremColors.streamBackground,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ))),
        actions: [
          Row(
            children: [
              // IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.notification_add_rounded,
              //       color: Colors.white,
              //       size: 30,
              //     )),
              // IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.subscriptions_rounded,
              //       color: Colors.white,
              //       size: 30,
              //     )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchBarPage()),
                    );
                  },
                  icon: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          )
        ],
      ),

      // drawer

      // drawer: Drawer(
      //   backgroundColor: StremColors.streamDrawerColor,
      //   child: ListView(
      //     children: [
      //       Stack(
      //         children: <Widget>[
      //           // drawer Image
      //
      //           SizedBox(
      //             height: 250,
      //             child: Image.asset(
      //               'lib/images/drawerHeader.png',
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //           // top contents
      //
      //           const Padding(
      //             padding:
      //                 EdgeInsets.symmetric(vertical: 70, horizontal: 10),
      //             child: Row(
      //               children: [
      //                 // profile Image
      //                 CircleAvatar(
      //                   backgroundImage: AssetImage('lib/images/Profile/1.png'),
      //                   radius: 45,
      //                 ),
      //
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 Column(
      //                   children: [
      //                     // user name
      //
      //                     Text(
      //                       'Edward Kenway',
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 20,
      //                       ),
      //                     ),
      //                     Text(
      //                       '@idEdward',
      //                       style: TextStyle(
      //                         color: Colors.grey,
      //                         fontSize: 15,
      //                       ),
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.person_2_outlined,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Account',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.notifications_outlined,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Notificaion',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.settings_outlined,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Account',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.payment_outlined,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Payment & Wallet',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.language_outlined,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Language',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.chat_bubble_outline,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Ask a Question',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       ),
      //       const ListTile(
      //         leading: Icon(
      //           Icons.logout_outlined,
      //           color: Colors.white,
      //           size: 25,
      //         ),
      //         title: Text('Log Out',
      //             style: TextStyle(color: Colors.white, fontSize: 15)),
      //       )
      //     ],
      //   ),
      // ),
      drawer: const HomeDrawer(),
      body: StreamWatchPage(),
    );
    //
  }
}
