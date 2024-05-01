import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/classes/categories_structure.dart';
import 'package:show_bazzar/Settings/classes/top_stores_structure.dart';
import 'package:show_bazzar/Settings/rough/temp.dart';
import 'package:show_bazzar/Settings/temporary_screen/not_ready_screen.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.white,
    this.onTap,
    required this.height,
    required this.width,
    required this.radius,
    this.topStores,
    this.topCategories,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final double height, width;
  final double radius;
  final TopStores? topStores;
  final TopCategories? topCategories;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => topCategories == null ? topStores == null ? notReadyScreen() : BrandScreen2(topStores: topStores,)  : BrandScreen2(topCategories: topCategories,),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Column(
          children: [
            //Circular icon
            Container(
              width: width,
              height: height,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: backgroundColor),
              child: Center(
                child: Image(
                  image: NetworkImage(
                    topStores == null
                        ? topCategories == null
                            ? 'https://th.bing.com/th/id/OIP.m-9WYH20xIfIA6vwP0ylHQHaHa?w=1080&h=1080&rs=1&pid=ImgDetMain'
                            : topCategories!.logo
                        : topStores!.logo,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              topStores == null ? topCategories == null ? 'Shoes' : topCategories!.categoryName : topStores!.storeName,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: textColor, fontWeight: FontWeight.w400),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
