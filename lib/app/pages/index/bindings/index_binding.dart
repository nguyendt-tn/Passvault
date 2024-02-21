import 'package:get/get.dart';
import 'package:passvault_app/app/pages/index/controllers/index_controller.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndexController>(
      () => IndexController(),
    );
  }
}
