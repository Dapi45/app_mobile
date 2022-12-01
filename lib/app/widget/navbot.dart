import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';

import 'package:flutter/material.dart';

int currentPage = 0;

class NavBot extends StatelessWidget {
  const NavBot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        TabData(iconData: Icons.build, title: "Service"),
        TabData(iconData: Icons.person, title: "Profile")
      ],
      onTabChangedListener: (position) {
        setState(() {
          currentPage = position;
        });
      },
    );
  }

  void setState(Null Function() param0) {}
}
