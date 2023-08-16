import 'package:flutter/cupertino.dart';
import 'package:flutter_e_commerce_app/pages/sign_in_page.dart';
import 'package:flutter_e_commerce_app/pages/splash_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    "/splashPage": (context) => const SplashPage(),
    "/signInPage": (context) => const SignInPage(),
  };
}
