import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:show_bazzar/Screens/negotiate_price_screen.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/appbar.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/circular_icon.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/section_heading.dart';
import 'package:show_bazzar/Widgets/Common%20Widgets/trounded_image.dart';
import 'package:show_bazzar/Widgets/main_drawer.dart';
import 'package:show_bazzar/core/utils/constants/colors.dart';
import 'package:show_bazzar/core/utils/constants/image_strings.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';
import 'package:show_bazzar/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:show_bazzar/features/shop/controllers/home_controller.dart';
import 'package:show_bazzar/features/shop/screen/product_details/widgets/product_attributes.dart';
import 'package:show_bazzar/features/shop/screen/product_details/widgets/product_detail_image_slider.dart';
import 'package:show_bazzar/features/shop/screen/product_details/widgets/product_meta_data.dart';
import 'package:show_bazzar/features/shop/screen/product_details/widgets/rating_share_widget.dart';

import '../Widgets/Product/product_price_text.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

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
            onPressed: () {},
            icon: const Icon(Icons.wallet),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: const HomeDrawer(),
      backgroundColor: Colors.lightBlue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///- Rating & Share Button
                  const TRatingAndShare(),

                  /// - Price Title, Stack & Brand
                  // TProductMetaData(),
                  Text(
                    'Nike Air Zoom Quest Structure 23',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  ///Pricee
                  const Row(
                    children: [
                      // Text('Rs. 750', style:  Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Row(
                        children: [
                          TSectionHeading(title: 'Price: ', showActionButton: false,),
                          SizedBox(width: TSizes.spaceBtwItems / 2,),
                          TProductPriceText(
                            price: '550',
                            isLarge: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///- - Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(context: context, builder: (ctx)=> const NegotiatePriceScreen());
                      },
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  ///Description
                  const TSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const ReadMoreText('This is a Product Description for Blue Nike Shoes. There are more things that can be added but We will add later. This is the best product in this budget, very light weight. ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),),


                  ///Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
