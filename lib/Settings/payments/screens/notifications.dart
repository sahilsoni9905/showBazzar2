import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});
  static const routeName = '/notification-screen';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  bool notification = false;
  bool sound = false;
  bool vibrate = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backGroundColor,
        title: Text(
          'Notifications',
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
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Common',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                'General Notification',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch(
                  value: notification,
                  onChanged: (value) {
                    setState(() {
                      notification = value;
                    });
                  },
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                'Sound',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch(
                    value: sound,
                    onChanged: (value) {
                      setState(() {
                        sound = value;
                      });
                    }),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                'Vibrate',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch(
                    value: vibrate,
                    onChanged: (value) {
                      setState(() {
                        vibrate = value;
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
