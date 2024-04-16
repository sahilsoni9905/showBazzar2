import 'package:flutter/material.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/section_heading.dart';
import 'package:show_bazzar/Widgets/Product/product_title_text.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';
import 'package:show_bazzar/core/utils/helpers/helper_functions.dart';

import '../../../../../Widgets/Common Widgets/trounded_container.dart';
import '../../../../../Widgets/chips/choice_chip.dart';
import '../../../../../core/utils/constants/colors.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Container(
          padding: const EdgeInsets.all(TSizes.md),
          color: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title, Price, Stock status
              // const TSectionHeading(title: 'Variation', showActionButton: false,),
              // const SizedBox(width: TSizes.spaceBtwItems,),
              Row(
                children: [
                  const TProductTitleText(
                    title: 'Stock : ',
                    smallSize: true,
                  ),
                  Text(
                    'In Stock',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 40', selected: false, onSelected: (value){},),
              ],
            )
          ],
        )
      ],
    );
  }
}


