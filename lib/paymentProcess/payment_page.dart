import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/paymentProcess/cart_page.dart';
import 'package:show_bazzar/paymentProcess/confirmation_page.dart';
import 'package:show_bazzar/paymentProcess/select_card_page.dart';

class paymentPage extends StatelessWidget {
  const paymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Payment Mode'),
      ),
      body: Column(
        children: [
          const Divider(
            color: Color.fromARGB(255, 234, 229, 229),
            height: 10,
            thickness: 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) =>   selectCardPage(),
                ),
              );
            },
            child: Container(
                width: double.maxFinite,
                height: 60,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 40,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Credit Card or Debit Card')
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) =>  const confirmationPage(),
                ),
              );
            },
            child: Container(
                height: 60,
                width: double.maxFinite,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.money,
                        size: 40,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Cash on Delivery')
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 60,
                width: double.maxFinite,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 40,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Bank Transfer')
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
