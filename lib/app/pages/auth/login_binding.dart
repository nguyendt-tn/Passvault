import 'package:get/get.dart';
import 'package:passvault_app/app/pages/auth/login_controller.dart';

class LoginBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
