import 'package:passvault_app/app/pages/auth/login_binding.dart';
import 'package:passvault_app/app/pages/auth/login_view.dart';
import 'package:passvault_app/app/pages/main/bindings/main_bindings.dart';
import 'package:passvault_app/app/pages/main/views/main_views.dart';
import 'package:passvault_app/app/pages/home/bindings/home_binding.dart';
import 'package:passvault_app/app/pages/home/views/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.main;

  static final routes = [
    GetPage(
      name: _Paths.mainScreen,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.homeScreen,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.loginScreen,
      page: () => const LoginView(),
      binding: LoginBiding(),
    ),
  ];
}
