import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../login/views/login_view.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
      ),
      body: Container(
        // decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[Text("Cek"), Text("1 2 3")],
        ),
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Tes"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginView()));
              },
            ),
            ElevatedButton(
                child: Text(
                  "Change to page 3",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  final FancyBottomNavigationState fState = bottomNavigationKey
                      .currentState as FancyBottomNavigationState;
                  fState.setPage(2);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background
                  onPrimary: Colors.yellow, // foreground
                ))
          ],
        );
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Tes"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginView()));
              },
            )
          ],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Tes"),
            ElevatedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            )
          ],
        );
    }
  }
}
