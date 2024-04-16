import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/streammodels/stream_category.dart';

class categoriesTile extends StatelessWidget {
  streamCategory category;
  final bool isSelected;
  categoriesTile({super.key, required this.category, required this.isSelected});
  Color defaultBackgroundColor = Color(0x28FFFFFF);
  Color defaultTextColor = Colors.white;
  Color onSelectedBackgroundColor = Colors.white;
  Color onSelectedTextColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isSelected ? onSelectedBackgroundColor : defaultBackgroundColor,
      ),
      child: Text(
        category.categoryName,
        style: TextStyle(
            color: isSelected ? onSelectedTextColor : defaultTextColor,
            fontSize: 20),
      ),
      alignment: Alignment.center,
    );
  }
}
