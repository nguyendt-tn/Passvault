part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const main = _Paths.mainScreen;
  static const home = _Paths.homeScreen;
}

abstract class _Paths {
  static const mainScreen = '/main_screen';
  static const homeScreen = '/home_screen';
}
