import 'package:e_commerce_app_edit/config/theme/app_styles.dart';
import 'package:e_commerce_app_edit/data_model/category_DM.dart';
import 'package:e_commerce_app_edit/pressentation/screens/home/tabs/categories/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<CategoryDM> categoriesList = CategoryDM.getCategoryList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: REdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Pick your category \n of interest',
              style: AppStyles.picCategory,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25.w,
                  mainAxisSpacing: 20.h),
              itemBuilder: (context, index) => CategoryWidget(
                categoryDM: categoriesList[index],
                index: index,
              ),
              itemCount: categoriesList.length,
            ))
          ],
        ),
      ),
    );
  }
}
