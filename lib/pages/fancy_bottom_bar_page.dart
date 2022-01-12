import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomBarPage extends StatefulWidget {
  const FancyBottomBarPage({Key? key}) : super(key: key);
  static const String id = "fancy_bottom_bar_page";

  @override
  _FancyBottomBarPageState createState() => _FancyBottomBarPageState();
}

class _FancyBottomBarPageState extends State<FancyBottomBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation"),
      ),
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.purpleAccent,
        textColor: Colors.black,
        barBackgroundColor: Colors.white,
        inactiveIconColor: Colors.purpleAccent,
        activeIconColor: Colors.white,
        tabs: [
          TabData(iconData: Icons.home_outlined, title: "Home", onclick: () {
            Navigator.pop(context);
          }),
          TabData(iconData: Icons.search_outlined, title: "Search"),
          TabData(iconData: Icons.account_circle_outlined, title: "Profile"),
        ],
        onTabChangedListener: (position) {
          print(position);
        },
      ),
    );
  }
}
