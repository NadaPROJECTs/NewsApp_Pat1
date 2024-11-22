import 'dart:async';

import 'package:e_commerce_app_edit/core/utiles/assets_manager.dart';
import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:e_commerce_app_edit/core/utiles/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, RoutesManager.home);
      },
    );
  }

  Widget build(BuildContext context) {
    //Future.delayed()
    return Stack(
      children: [
        Container(
            color: ColorsManager.White,
            child: Image.asset(
              AssetsManager.bgpattern,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              AssetsManager.logo,
              width: 199.w,
              height: 208.h,
            ),
            Spacer(),
            Image.asset(
              AssetsManager.routelogo,
              width: 213.w,
              height: 128.h,
            ),
          ],
        )
      ],
    );
  }
}
