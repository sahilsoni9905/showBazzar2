import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

import '../vertical_image_text.dart';

class TTopStoresSlide extends StatelessWidget {
  const TTopStoresSlide({
    super.key,
  });

  // final List<Widget> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            height: 64.0,
            width: 64.0,
            image: listTopStoreImage[index],
            title: 'Shoes',
            onTap: () {},
            radius: 100,
          );
        },
      ),
    );
  }
}
