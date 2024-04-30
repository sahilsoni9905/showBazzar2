import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/payments/widgets/build_image.dart';
import 'package:show_bazzar/Settings/payments/widgets/custom_text_field.dart';

class MyCardsScreen extends StatelessWidget {
  static const routeName = '/my-cards-screen';
  final _addCard = GlobalKey<FormState>();
  final TextEditingController _cardHolderNameController =
      TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _expController = TextEditingController();
  MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const Text(
          'My Cards',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: imageUrls.length,
              options: CarouselOptions(
                height: 180,
              ),
              itemBuilder: (context, index, realIndex) {
                final sliderImage = imageUrls[index];
                return ImageBuilder(image: sliderImage);
              },
            ),
            const SizedBox(
              height: 60,
            ),
            Form(
              key: _addCard,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cardholder Name',
                      style: TextStyle(color: Colors.white),
                    ),
                    CustomTextField(
                      controller: _cardHolderNameController,
                      hintText: 'Enter your name ans written on card',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Card Number',
                      style: TextStyle(color: Colors.white),
                    ),
                    CustomTextField(
                      controller: _cardNumberController,
                      hintText: 'Enter card number',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'CVV',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: size.width * 0.4,
                              child: CustomTextField(
                                controller: _cvvController,
                                hintText: '123',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Exp. Date',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: size.width * 0.4,
                              child: CustomTextField(
                                controller: _expController,
                                hintText: '20/20',
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  elevation: 20,
                  shadowColor: Colors.black12),
              onPressed: () {},
              child: const Text(
                '   Add Card   ',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
