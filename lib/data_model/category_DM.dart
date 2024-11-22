import 'package:e_commerce_app_edit/core/utiles/assets_manager.dart';
import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:e_commerce_app_edit/core/utiles/costant_manager.dart';
import 'package:e_commerce_app_edit/core/utiles/strings_manager.dart';
import 'package:flutter/material.dart';

class CategoryDM {
  String imgPath = "";
  String title = "";
  Color bgcolor = Color(0xFFFFFFFF);
  String backEndId = "";

  CategoryDM(
      {required this.backEndId,
      required this.title,
      required this.bgcolor,
      required this.imgPath});

  static List<CategoryDM> getCategoryList() => [
        CategoryDM(
            backEndId: CostantManager.SportsBackEndID,
            title: stringsManager.Sports,
            bgcolor: ColorsManager.red,
            imgPath: AssetsManager.ball),
        CategoryDM(
            backEndId: CostantManager.generalBackEndID,
            title: stringsManager.General,
            bgcolor: ColorsManager.darkBlue,
            imgPath: AssetsManager.general),
        CategoryDM(
            backEndId: CostantManager.healthBackEndID,
            title: stringsManager.Health,
            bgcolor: ColorsManager.pink,
            imgPath: AssetsManager.health),
        CategoryDM(
            backEndId: CostantManager.businessBackEndID,
            title: stringsManager.Business,
            bgcolor: ColorsManager.Brown,
            imgPath: AssetsManager.bussines),
        CategoryDM(
            backEndId: CostantManager.entertainmentBackEndID,
            title: stringsManager.Entertainment,
            bgcolor: ColorsManager.lightBlue,
            imgPath: AssetsManager.Entertainment),
        CategoryDM(
            backEndId: CostantManager.scienceBackEndID,
            title: stringsManager.Science,
            bgcolor: ColorsManager.yellow,
            imgPath: AssetsManager.Science),
        CategoryDM(
            backEndId: CostantManager.techBackEndID,
            title: stringsManager.Tech,
            bgcolor: ColorsManager.Green,
            imgPath: AssetsManager.tech),
      ];
}
