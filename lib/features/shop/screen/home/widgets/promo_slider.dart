import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/trounded_container.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';
import 'package:show_bazzar/features/shop/controllers/home_controller.dart';

import '../../../../../Widgets/Common Widgets/trounded_image.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
    required this.width,
    required this.height,
    required this.liveText,
    required this.viewText,
    required this.logoImage,
    this.list,
  });

  final List<String> banners;
  final double width, height;
  final String liveText;
  final String viewText;
  final String logoImage;
  final List<String>? list;

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
                  borderRadius: 24,
                  list: list,
                ))
            .toList(),
      ),

      /*Obx(
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
      )*/
      Container(
        width: 380,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.5)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipRRect(
                    child: TRoundedImage(
                  width: 50,
                  imageUrl: logoImage,
                  borderRadius: 18,
                )),
              ],
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  liveText,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  viewText,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
