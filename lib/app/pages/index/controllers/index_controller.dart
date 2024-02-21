import 'package:get/get.dart';

class IndexController extends GetxController {
  final Rx<int> currentIndex = 0.obs;
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void onPageChange(int index) {
    currentIndex.value = index;
  }
}
