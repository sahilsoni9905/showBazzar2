import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/bottom_bar.dart';
import 'package:show_bazzar/Settings/company_details/screens/company_details_screen.dart';
import 'package:show_bazzar/Settings/my_profile/screens/edit_profile_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/lanuages_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/my_cards_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/notifications.dart';
import 'package:show_bazzar/Settings/payments/screens/payment_profile.dart';
import 'package:show_bazzar/Settings/payments/screens/setting_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/transaction_history.dart';

Route<dynamic> genrateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case bottomBar.RouteName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const bottomBar());
    case TransactionScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const TransactionScreen());
    case SettingScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const SettingScreen());
    case NotificationScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const NotificationScreen());
    case LanguageScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const LanguageScreen());
    case MyCardsScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => MyCardsScreen());
    case PaymentProfileScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const PaymentProfileScreen());
    case editProfileScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => editProfileScreen());
    case CompanyDetailsScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const CompanyDetailsScreen());
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text("screen does not exist"),
                ),
              ));
  }
}
