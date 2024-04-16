import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

class TransactionScreen extends StatelessWidget {
  static const routeName = '/transaction-screen';
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backGroundColor,
        title: Text(
          'Transaction history',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
