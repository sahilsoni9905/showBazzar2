import 'package:flutter/material.dart';
import 'package:show_bazzar/Screens/brand_screen.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = Colors.white,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    required this.borderRadius,
    this.list,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final List<String>? list;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => BrandScreen(
                  list: list!,
                )));
      },
      child: SizedBox(
        height: height,
        width: width,
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: border),
          child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              fit: fit,
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
