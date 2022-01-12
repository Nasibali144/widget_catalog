import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);
  static const String id = "navigation_rail_page";

  @override
  _NavigationRailPageState createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Row(
          children: [
            NavigationRail(
              labelType: NavigationRailLabelType.selected,
              leading: const CircleAvatar(
                backgroundColor: Colors.purpleAccent,
                foregroundImage: AssetImage(
                  'assets/images/img.png'
                ),
              ),
              groupAlignment: 1,
              backgroundColor: Colors.blueGrey.shade800,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: const [
                NavigationRailDestination(
                  label: SizedBox.shrink(),
                  selectedIcon: Icon(Icons.tune, color: Colors.yellowAccent,),
                  icon: Icon(Icons.tune_outlined, color: Colors.white,),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(bottom: 5, top: 80),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Favourites",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: SizedBox(
                      child: Text(
                        "Favourites",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Inspiration",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Inspiration",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
              selectedIndex: selectedIndex,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Navigation rail",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
