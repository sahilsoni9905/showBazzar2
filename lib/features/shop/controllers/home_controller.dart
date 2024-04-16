import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    carousalCurrentIndex.value = index; // correct it letter
  }
}