import 'package:flutter/material.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/trounded_image.dart';
import 'package:show_bazzar/core/utils/constants/colors.dart';
import 'package:show_bazzar/core/utils/constants/image_strings.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';
import 'package:show_bazzar/features/shop/screen/home/widgets/promo_slider.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         const TPromoSlider(
          width: 420,
          height: 400,
          banners: [
            TImages.productImage1,
            TImages.productImage2,
            TImages.productImage3,
            TImages.productImage4,
          ], liveText: '', viewText: '', logoImage: '',
        ),
        Positioned(
          right: 0,
          bottom: 30,
          child: SizedBox(
            height: 80,
            child: ListView.separated(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              separatorBuilder: (_, __) => const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              itemBuilder: (_, index) => TRoundedImage(
                imageUrl: TImages.productImage3,
                width: 70,
                backgroundColor: TColors.primary,
                border: Border.all(color: TColors.primary),
                padding: const EdgeInsets.all(TSizes.sm), borderRadius: 24,
              ),
            ),
          ),
        ),
        // const TAppBar(
        //   showBackArrow: true,
        //   actions: [
        //     TCircularIcon(
        //       icon: Iconsax.heart5,
        //       color: Colors.red,
        //     )
        //   ],
        // ),
      ],
    );
  }
}