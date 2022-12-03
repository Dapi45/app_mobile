import 'package:app_mobile/app/modules/login/views/login_view.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home/views/home_view.dart';
import 'app/modules/widget/widget.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      //initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
      home: navigation(),
    ),
  );
  _getPage(int page) {
    switch (page) {
      case 0:
        return HomeView();
      case 1:
        return HomeView();
      default:
        return HomeView();
    }
  }
}
