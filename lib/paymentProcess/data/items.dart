import 'dart:ffi';

import 'package:flutter/material.dart';

class ShopItems {
  String imagePath;
  String Name;
  double Price;
  bool inLiked;
  int quantity;
  ShopItems(
      {required this.imagePath,
      required this.Name,
      required this.Price,
      required this.inLiked,
      required this.quantity});
}

List<ShopItems> itemsInCart = [
  ShopItems(
      imagePath: 'images/shoes/shoe1.png',
      Name: 'Nike Air Zoom Quest Structure 23 ',
      Price: 288.43,
      inLiked: false,
      quantity: 1)
];
