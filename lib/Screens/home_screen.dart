import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/company_details/screens/company_details_screen.dart';
import 'package:show_bazzar/Settings/payments/screens/my_cards_screen.dart';
import 'package:show_bazzar/Stream/stream_pages/stream_home_page.dart';
import 'package:show_bazzar/Widgets/Home%20Page/categories_slider.dart';
import 'package:show_bazzar/Widgets/Home%20Page/top_stores_slide.dart';
import 'package:show_bazzar/Widgets/main_drawer.dart';
import 'package:show_bazzar/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:show_bazzar/paymentProcess/cart_page.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => MyCardsScreen(),
                ),
              );
            },
            icon: const Icon(Icons.wallet),
          ),
          IconButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const cartPage(),
              ),
            );
          }, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue.shade900,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.centerLeft,
          //         end: Alignment.bottomRight,
          //         colors: [Colors.lightBlue.shade50, Colors.lightBlue.shade100])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 30,),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(elevation: MaterialStateProperty.all(2)),
                        child: const Text(
                          'Bazzar',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 70,
                        color: Colors.red,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) =>  const StreamHomePage(),
                        ),
                      );
                    },
                    style: ButtonStyle(elevation: MaterialStateProperty.all(2)),
                    child: const Text(
                      'Stream',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Top Store',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TTopStoresSlide(),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
               const TCategoriesSlide(radius: 100, height:56.0, width: 56.0, heighttext: 80, title: 'Store',),
              const SizedBox(
                height: 16,
              ),
               const Padding(
                padding: EdgeInsets.all(24),
                child: TPromoSlider(
                  width: 380,
                  height: 240,
                  banners: [
                    'images/shoes/shoe1.png',
                    'images/shoes/shoe2.png',
                    'images/shoes/shoe3.png',
                    'images/shoes/shoe4.png'
                  ],
                ),
              ),
               const SizedBox(height: 16,),
               const Padding(
                padding: EdgeInsets.all(24),
                child: TPromoSlider(
                  width: 380,
                  height: 240,
                  banners: [
                    'images/shoes/shoe4.png',
                    'images/shoes/shoe1.png',
                    'images/shoes/shoe2.png',
                    'images/shoes/shoe3.png',
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
