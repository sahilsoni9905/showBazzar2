import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_bazzar/core/utils/constants/colors.dart';
import 'package:show_bazzar/core/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon(
      {Key? key,
      this.width,
      this.height,
      this.size,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed})
      : super(key: key);

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.black.withOpacity(0.9)
                  : TColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
