import 'package:e_commerce_app_edit/core/utiles/assets_manager.dart';
import 'package:e_commerce_app_edit/core/utiles/colors_manager.dart';
import 'package:e_commerce_app_edit/pressentation/screens/home/home_drawer.dart';
import 'package:e_commerce_app_edit/pressentation/screens/home/tabs/categories/categories.dart';
import 'package:e_commerce_app_edit/pressentation/screens/home/tabs/settings/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget selectedWidget = Categories();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.White,
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(AssetsManager.bgpattern)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("News App"),
        ),
        drawer: HomeDrawer(
          OnMenuItemClickedd: OnMenuItemClicked,
        ),
        body: selectedWidget,
      ),
    );
  }

  // void OnMenuItemClicked(int pos ){
  //   if(pos ==0)
  //   {
  //     selectedWidget=  Categories();
  //   }
  //  else if(pos ==1)
  //    //   {
  //    //     selectedWidget=  settings();
  //    //   }
  //
  //
  // }

  void OnMenuItemClicked(menuItem item) {
    Navigator.pop(context); // عشان يقفل المينو
    switch (item) {
      case menuItem.categories:
        selectedWidget = Categories();
      case menuItem.settings:
        selectedWidget = Settings();
    }
    setState(() {});
  }
}
