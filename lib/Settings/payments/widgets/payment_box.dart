import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

class PaymentBox extends StatelessWidget {
  const PaymentBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(225, 59, 8, 104),
          borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('\$100.43',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25)),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      elevation: 20,
                      shadowColor: Colors.black12),
                  onPressed: () {},
                  child: const Text(
                    '   Deposit   ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
