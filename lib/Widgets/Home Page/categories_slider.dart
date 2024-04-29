import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

import '../vertical_image_text.dart';

class TCategoriesSlide extends StatelessWidget {
  const TCategoriesSlide({
    super.key,
    required this.radius,
    required this.height,
    required this.width,
    required this.heighttext,
    required this.title,
  });
  final double radius;
  final double height, width, heighttext;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heighttext,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              height: height,
              width: width,
              radius: radius,
              image: listTopCategories[index],
              title: title,
              onTap: () {},
            );
          }),
    );
  }
}
