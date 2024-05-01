import 'package:show_bazzar/Settings/global_vaiables.dart';

class TopStores {
  final String logo;
  final String storeName;
  final List<String> storeImages;

  TopStores(
      {required this.logo, required this.storeName, required this.storeImages});
}

final topStoresList = [
  TopStores(
      logo:
          'https://prod.cloud.rockstargames.com/crews/sc/8437/12192665/publish/emblem/emblem_512.png',
      storeName: 'Nike',
      storeImages: gridShoesImageUrls),
  TopStores(
      logo:
          'https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-apple-praised-after-new-product-reveal-investor-32.png',
      storeName: 'Apple',
      storeImages: gridAppleImageUrls),
  TopStores(
      logo: listTopStoreImage[2],
      storeName: 'HP',
      storeImages: gridAppleImageUrls),
  TopStores(
      logo: listTopStoreImage[3],
      storeName: 'Levis',
      storeImages: gridAppleImageUrls),
  TopStores(
      logo: listTopStoreImage[4],
      storeName: 'Levis',
      storeImages: gridAppleImageUrls),
];
