import 'package:flutter/cupertino.dart';

class AppSizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  static double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = AppSizeConfig.screenHeight;

    return (inputHeight / 812.0) * screenHeight;
  }

  static double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = AppSizeConfig.screenWidth;

    return (inputWidth / 375.0) * screenWidth;
  }
}