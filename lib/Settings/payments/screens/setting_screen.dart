import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/payments/screens/lanuages_screen.dart';
import 'package:show_bazzar/Settings//payments/screens/notifications.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/settings-screen';
  const SettingScreen({super.key});

  void changeScreenToNotification(BuildContext context) {
    Navigator.pushNamed(context, NotificationScreen.routeName);
  }

  void changeScreenToLanguage(BuildContext context) {
    Navigator.pushNamed(context, LanguageScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backGroundColor,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'General',
              style: TextStyle(
                  color: Color.fromARGB(248, 59, 135, 221), fontSize: 15),
            ),
            ListTile(
              onTap: () {
                changeScreenToLanguage(context);
              },
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.language,
                color: Colors.white,
              ),
              title: Text(
                'Language',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Change the language as per your need',
                style: TextStyle(color: Color.fromARGB(255, 100, 98, 98)),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.location_pin,
                color: Colors.white,
              ),
              title: Text(
                'Locations',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Add your home and work',
                style: TextStyle(color: Color.fromARGB(255, 100, 98, 98)),
              ),
            ),
            Text(
              'Notifications',
              style: TextStyle(
                  color: Color.fromARGB(248, 59, 135, 221), fontSize: 15),
            ),
            ListTile(
              onTap: () {
                changeScreenToNotification(context);
              },
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Push notifications',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'For daily update and others',
                style: TextStyle(color: Color.fromARGB(255, 100, 98, 98)),
              ),
            ),
            Text(
              'More',
              style: TextStyle(
                  color: Color.fromARGB(248, 59, 135, 221), fontSize: 15),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              title: Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
