import 'package:flutter/material.dart';

class ScreenUtil {
  static Size? screenSize;
  static double? deviceWidth;
  static double? deviceHeight;
  static double? textScaleFactor;
  static double designWidth = 375;
  static double designHeight = 812;

  ScreenUtil._();

  static final ScreenUtil _instance = ScreenUtil._();

  factory ScreenUtil() => _instance;

  void init(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    deviceWidth = screenSize!.width;
    deviceHeight = screenSize!.height;
    textScaleFactor = MediaQuery.textScaleFactorOf(context);
  }

  double setWidth(double width) {
    return deviceWidth! / (designWidth / width);
  }

  double setHeight(double height) {
    return deviceHeight! / (designHeight / height);
  }

  double setRadius(double radius) {
    final double sWidth = designWidth;
    final double sHeight = designHeight;
    final double scaleH = sHeight / deviceHeight!;
    final double scaleW = sWidth / deviceWidth!;
    final double scale = minScale(scaleW, scaleH);
    return radius * scale;
  }

  double setFontSize(double fontSize) {
    final double sWidth = screenSize!.width;
    final double sHeight = screenSize!.height;

    final double scaleH = sHeight / deviceHeight!;
    final double scaleW = sWidth / deviceWidth!;

    final double scale = maxScale(scaleW, scaleH);

    if (deviceWidth == 0 || deviceHeight == 0 || sWidth == 0 || sHeight == 0) {
      return 0.0;
    }

    return fontSize * scale * textScaleFactor!;
  }

  double maxScale(double first, double second) {
    return first > second ? first : second;
  }

  double minScale(double first, double second) {
    return first < second ? first : second;
  }
}
