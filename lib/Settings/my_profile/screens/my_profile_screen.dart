import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/my_profile/screens/edit_profile_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/lanuages_screen.dart';
import 'package:show_bazzar/Settings//payments/screens/notifications.dart';

class myProfile extends StatelessWidget {
  const myProfile({super.key});

  @override
  Widget build(BuildContext context) {
    void changeToLanguageScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => LanguageScreen(),
        ),
      );
    }

    void changeToNotificationsScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => NotificationScreen(),
        ),
      );
    }

    void changeToEditProfileScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => editProfileScreen(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 150,
                  child: ClipOval(

                    child: Image.asset(
                      'lib/Stream/images/Profile/1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sahil Soni',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  '@idEdward',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 163, 163, 163)),
                ),
                Text(
                  'sahilsoni@showBazzar.com | +91 XXXXXXXXXX',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(223, 28, 19, 126),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: changeToEditProfileScreen,
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.person_2_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Edit profile information',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          onTap: changeToNotificationsScreen,
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.notification_add_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Notifications',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          onTap: changeToLanguageScreen,
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.language_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Language',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(223, 28, 19, 126),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.live_help_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Help & Support',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Contact Us',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.lock_clock_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Privacy policy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(223, 28, 19, 126),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      children: [
                        ListTile(
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          leading: Icon(
                            Icons.logout_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
