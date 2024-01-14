part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const main = _Paths.mainScreen;
  static const home = _Paths.homeScreen;
  static const login = _Paths.loginScreen;
}

abstract class _Paths {
  static const mainScreen = '/main_screen';
  static const homeScreen = '/home_screen';
  static const loginScreen = '/login_screen';
}
