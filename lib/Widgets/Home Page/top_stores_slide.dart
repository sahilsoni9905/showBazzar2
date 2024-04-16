import 'package:flutter/material.dart';

import '../vertical_image_text.dart';

class TTopStoresSlide extends StatelessWidget {
  const TTopStoresSlide({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: 6 ,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              height: 64.0,
              width: 64.0,
              image: 'images/shoes.png',
              title: 'Shoes',
              onTap: () {}, radius: 100,
            );
          }),
    );
  }
}