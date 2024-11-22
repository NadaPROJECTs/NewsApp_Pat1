import 'package:e_commerce_app_edit/pressentation/screens/home/home_screen.dart';
import 'package:e_commerce_app_edit/pressentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String home = "/home_screen";
  static const String splash = "/splash_screen";

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => Home());

      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());
    }
  }
}
