import 'package:show_bazzar/Settings/global_vaiables.dart';

class TopCategories {
  final String logo;
  final String categoryName;
  final List<String> categoryImages;

  TopCategories(
      {required this.logo,
      required this.categoryName,
      required this.categoryImages});
}

final topCategoriesList = [
  TopCategories(
      logo: listTopCategories[0],
      categoryName: 'Mobile',
      categoryImages: listMobiles),
  TopCategories(
      logo: listTopCategories[1],
      categoryName: 'Laptops',
      categoryImages: gridHpImageUrls),
  TopCategories(
      logo: listTopCategories[2],
      categoryName: 'Clothes',
      categoryImages: gridAppleImageUrls),
  TopCategories(
      logo: listTopCategories[3],
      categoryName: 'Watch',
      categoryImages: gridAppleImageUrls),
  TopCategories(
      logo: listTopCategories[4],
      categoryName: 'Beauty',
      categoryImages: gridAppleImageUrls),
];
