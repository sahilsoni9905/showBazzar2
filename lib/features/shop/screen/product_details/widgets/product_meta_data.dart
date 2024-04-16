import 'package:flutter/material.dart';
import 'package:show_bazzar/Widgets/Product/product_price_text.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/trounded_container.dart';
import 'package:show_bazzar/Widgets/Product/product_title_text.dart';
import 'package:show_bazzar/core/utils/constants/colors.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & SALE Price
        Row(
          children: [
            ///Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor:
                  Theme.of(context).colorScheme.secondary.withOpacity(0.8),
              padding: TSizes.sm,
              child: Text(
                'Price',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            ///Price
            Text('Rs. 750', style:  Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: '550', isLarge: true,)

          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5,),

        /// Title
        TProductTitleText(title: 'Green Nike Sports Shoes'),
        SizedBox(width: TSizes.spaceBtwItems,),

        /// Stock Status

        Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('In Stock', style:  Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        /// Brand
        Text('Nike', style: Theme.of(context).textTheme.titleMedium,)
      ],
    );
  }
}
