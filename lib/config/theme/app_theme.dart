import 'package:e_commerce_app_edit/config/theme/app_styles.dart';
import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: ColorsManager.White),
        color: ColorsManager.Green,
        titleTextStyle: AppStyles.appbar,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.r))),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      drawerTheme: DrawerThemeData(
        backgroundColor: ColorsManager.White,
        scrimColor: Colors.black.withOpacity(0.6),
      ));
}
