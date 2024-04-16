import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/trounded_container.dart';
import 'package:show_bazzar/features/shop/controllers/home_controller.dart';

import '../../../../../Widgets/Common Widgets/trounded_image.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
    required this.width,
    required this.height,
  });

  final List<String> banners;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
          onPageChanged: (index, _) => controller.updatePageIndicator(index),
        ),
        items: banners
            .map((url) => TRoundedImage(
                  imageUrl: url,
                  width: width,
                  height: height,
                ))
            .toList(),
      ),
      const SizedBox(
        height: 16,
      ),
      Obx(
        () => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < banners.length; i++)
              TRoundedContainer(
                height: 4,
                width: 20,
                margin: const EdgeInsets.only(right: 10),
                backgroundColor: controller.carousalCurrentIndex.value == i
                    ? Theme.of(context).colorScheme.primary
                    : Colors.white,
              ),
          ],
        ),
      )
    ]);
  }
}
