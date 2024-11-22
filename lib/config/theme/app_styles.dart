import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final TextStyle appbar = GoogleFonts.exo(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.White,
  );
  static final TextStyle drawer = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.White,
  );
  static final TextStyle drawerItems = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.BlackAccent,
  );
  static final TextStyle picCategory = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.grey,
  );
  static final TextStyle categoryTitle = GoogleFonts.exo(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.White,
  );
}
