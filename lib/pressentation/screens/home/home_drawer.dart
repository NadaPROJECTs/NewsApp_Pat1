import 'package:e_commerce_app_edit/config/theme/app_styles.dart';
import 'package:e_commerce_app_edit/config/theme/app_styles.dart';
import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:e_commerce_app_edit/pressentation/screens/home/home_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnMenuItemClicked = void Function(menuItem);

class HomeDrawer extends StatelessWidget {
  HomeDrawer({super.key, required this.OnMenuItemClickedd});

  OnMenuItemClicked OnMenuItemClickedd;
  static const int categories = 0;
  static const int settings = 1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 110.h,
              color: ColorsManager.Green,
              alignment: Alignment.center,
              child: Text(
                "News App",
                style: AppStyles.drawer,
              )),
          Padding(
            padding: REdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    OnMenuItemClickedd(menuItem.categories);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.list,
                        size: 33.sp,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Categories",
                        style: AppStyles.drawerItems,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                InkWell(
                  onTap: () {
                    OnMenuItemClickedd(menuItem.settings);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 33.sp,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Settings",
                        style: AppStyles.drawerItems,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum menuItem {
  categories,
  settings,
}
