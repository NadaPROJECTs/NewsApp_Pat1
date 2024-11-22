import 'package:e_commerce_app_edit/config/theme/app_styles.dart';
import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:e_commerce_app_edit/data_model/category_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  CategoryDM categoryDM;
  int index;

  CategoryWidget({super.key, required this.categoryDM, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      width: 148,
      decoration: BoxDecoration(
        color: categoryDM.bgcolor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.r),
          topRight: Radius.circular(18.r),
          bottomLeft: Radius.circular(index.isEven ? 18.r : 0.r),
          bottomRight: Radius.circular(index.isEven ? 0.r : 18.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            categoryDM.imgPath,
            width: 142.w,
            height: 126.h,
          ),
          Text(
            categoryDM.title,
            style: AppStyles.categoryTitle,
          ),
        ],
      ),
    );
  }
}
