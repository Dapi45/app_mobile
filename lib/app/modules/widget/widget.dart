import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../home/views/home_view.dart';
import '../login/views/login_view.dart';

class navigation extends StatefulWidget {
  @override
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.home_repair_service,
              title: "Service",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginView()))),
          TabData(iconData: Icons.person, title: "Profile"),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[Text("Cek"), Text("1 2 3")],
      //   ),
      // ),
    );
  }
}
