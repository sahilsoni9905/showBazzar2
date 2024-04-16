import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/payments/screens/my_cards_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/setting_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/transaction_history.dart';
import 'package:show_bazzar/Settings/payments/widgets/above_cart_text.dart';
import 'package:show_bazzar/Settings/payments/widgets/bottom_buttons.dart';
import 'package:show_bazzar/Settings/payments/widgets/build_image.dart';
import 'package:show_bazzar/Settings/payments/widgets/payment_box.dart';

class PaymentProfileScreen extends StatelessWidget {
  static const routeName = '/payment-profile-screen';
  const PaymentProfileScreen({super.key});

  void changeScreenToTransactionScreen(BuildContext context) {
    Navigator.pushNamed(
      context, TransactionScreen.routeName, // here giving error
    );
  }

  void changeScreenToSettingsScreen(BuildContext context) {
    Navigator.pushNamed(
      context, SettingScreen.routeName, // here giving error
    );
  }

  void changeScreenToMyCards(BuildContext context) {
    Navigator.pushNamed(context, MyCardsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextColor = Colors.white;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backGroundColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'My Cards & Wallet',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: TextColor, fontWeight: FontWeight.w300, fontSize: 30),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 16, 3, 60),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.4,
                          child: CircleAvatar(
                            radius: 45,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Sahil!!',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: TextColor),
                            ),
                            Text(
                              '@idEdward',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: TextColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: PaymentBox(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: AboveCartText(
                      onpressed: () => changeScreenToMyCards(context)),
                ),
                CarouselSlider.builder(
                  itemCount: imageUrls.length,
                  options: CarouselOptions(height: 180),
                  itemBuilder: (context, index, realIndex) {
                    final sliderImage = imageUrls[index];
                    return ImageBuilder(image: sliderImage);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: bottomButtons(
                    text: 'See transaction history',
                    iconData: Icons.history,
                    onpressed: () {
                      changeScreenToTransactionScreen(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: bottomButtons(
                    text: 'Settings',
                    iconData: Icons.settings,
                    onpressed: () {
                      changeScreenToSettingsScreen(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: bottomButtons(
                    text: 'Help Center',
                    iconData: Icons.message_rounded,
                    onpressed: () {},
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
