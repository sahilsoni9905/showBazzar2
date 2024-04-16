import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/company_details/screens/company_details_screen.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/home/widgets/drawer.dart';
import 'package:show_bazzar/Settings//home/widgets/filter_bottom_sheet.dart';
import 'package:show_bazzar/Settings/payments/screens/payment_profile.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  void changeScreenToPaymentProfile() {
    Navigator.pushNamed(context, PaymentProfileScreen.routeName);
  }

  void changeScreenToCompanyDetails() {
    Navigator.pushNamed(context, CompanyDetailsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.5),
            child: IconButton(
                onPressed: changeScreenToPaymentProfile,
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 35,
                )),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
              )),
          IconButton(
              onPressed: changeScreenToCompanyDetails,
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
     // drawer: homeDrawer(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return FilterBottomSheet();
                },
              );
            },
            label: Text(
              'Filter',
              style: TextStyle(fontSize: 20),
            ),
            icon: Icon(
              Icons.filter_alt_outlined,
              size: 30,
            ),
          ),
          SizedBox(width: 16), // Add some space between the buttons
          FloatingActionButton.extended(
            onPressed: () {
              // Add onPressed action for the second floating action button
            },
            label: Text(
              'Sort',
              style: TextStyle(fontSize: 20),
            ),
            icon: Icon(
              Icons.sort_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
