import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:show_bazzar/Screens/log_in_screen.dart';
import 'package:show_bazzar/Theme/theme.dart';
import 'package:show_bazzar/paymentProcess/cart_page.dart';
import 'package:show_bazzar/paymentProcess/confirmation_page.dart';
import 'package:show_bazzar/paymentProcess/payment_page.dart';
import 'package:show_bazzar/paymentProcess/select_card_page.dart';
import 'package:show_bazzar/paymentProcess/shipping_page.dart';
import 'package:show_bazzar/router.dart';

// import 'Settings/bottom_bar.dart';
// import 'Settings/router.dart';
import 'core/utils/constants/text_strings.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 11, 33),
  ),
);

void main() {
  runApp(
      GetMaterialApp(
        title: TTexts.appName,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        // initialBinding: GeneralBindings(),
       // onGenerateRoute: (settings) => genrateRoute(settings),
        home: const ShowBazzar(),


      //     home: const bottomBar()
       )
  );
}

class ShowBazzar extends StatelessWidget {
  const ShowBazzar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LogInScreen();
  }
}
