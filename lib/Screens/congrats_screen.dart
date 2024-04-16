import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/paymentProcess/cart_page.dart';

import '../core/utils/constants/sizes.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Congrats.png'),
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Congratulations',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: TSizes.spaceBtwItems / 2,),
                Text('You can buy this product at this Price.', style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w700),),
                SizedBox(height: TSizes.spaceBtwItems,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) =>  const cartPage(),
                    ),
                  );
                }, child: Text('Proceed to Buy'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
