import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/my_profile/screens/my_profile_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/lanuages_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/notifications.dart';
import 'package:show_bazzar/Settings/payments/screens/setting_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/transaction_history.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});
  void changeScreenToNotification(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const NotificationScreen(),
      ),
    );
  }

  void changeScreenToLanguage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const LanguageScreen(),
      ),
    );
  }

  void changeScreenToTransactionScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const TransactionScreen(),
      ),
    );
  }

  void changeScreenToSettingsScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const SettingScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backGroundColor,
      child: Center(
        child: Column(
          children: [
             DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://wallup.net/wp-content/uploads/2018/09/28/684893-color-pattern.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 90,
                      child: ClipOval(

                        child: Image.asset(
                          'lib/Stream/images/Profile/1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Align the Column vertically
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sahil Soni',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'id : 217XXXXXXX',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
             ListTile(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => myProfile(),
                  ),
                );
              },
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              leading: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                changeScreenToNotification(context);
              },
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              leading: const Icon(
                Icons.notifications_active_outlined,
                size: 30,
              ),
              title: const Text(
                'Notification',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                changeScreenToSettingsScreen(context);
              },
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              leading: const Icon(
                Icons.settings_outlined,
                size: 30,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                changeScreenToTransactionScreen(context);
              },
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              leading: const Icon(
                Icons.wallet_outlined,
                size: 30,
              ),
              title: const Text(
                'Payments',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                changeScreenToLanguage(context);
              },
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              leading: const Icon(
                Icons.language_outlined,
                size: 30,
              ),
              title: const Text(
                'Language',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              leading: Icon(
                Icons.chat_outlined,
                size: 30,
              ),
              title: Text(
                'Ask a Question',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
