import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/streammodels/stream_category.dart';

class categoriesTile extends StatelessWidget {
  streamCategory category;
  final bool isSelected;
  categoriesTile({super.key, required this.category, required this.isSelected});
  Color defaultBackgroundColor = const Color(0x28FFFFFF);
  Color defaultTextColor = Colors.white;
  Color onSelectedBackgroundColor = Colors.white;
  Color onSelectedTextColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isSelected ? onSelectedBackgroundColor : defaultBackgroundColor,
      ),
      alignment: Alignment.center,
      child: Text(
        category.categoryName,
        style: TextStyle(
            color: isSelected ? onSelectedTextColor : defaultTextColor,
            fontSize: 15),
      ),
    );
  }
}
