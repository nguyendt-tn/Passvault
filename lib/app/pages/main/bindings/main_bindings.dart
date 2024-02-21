import 'package:passvault_app/app/pages/home/controllers/home_controller.dart';
import 'package:passvault_app/app/pages/index/controllers/index_controller.dart';
import 'package:passvault_app/app/pages/main/controllers/main_controllers.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    Get.lazyPut<IndexController>(
      () => IndexController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
