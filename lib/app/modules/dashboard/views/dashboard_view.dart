import 'package:app_mobile/app/modules/dashboard/views/home_view.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'profile_view.dart';
import 'service_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              ServiceView(),
              ProfileView(),
            ],
          ),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(
                iconData: Icons.home,
                title: "Home",
                onclick: () => controller.tabIndex = 0),
            TabData(
                iconData: Icons.build,
                title: "Service",
                onclick: () => controller.tabIndex = 0),
            TabData(
                iconData: Icons.person,
                title: "Profile",
                onclick: () => controller.tabIndex = 0)
          ],
          onTabChangedListener: controller.changeTabIndex,
        ),
      );
    });
  }
}
