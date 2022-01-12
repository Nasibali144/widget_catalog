import 'package:flutter/material.dart';
import 'package:widget_catalog/pages/animations_page.dart';
import 'package:widget_catalog/pages/buttons_page.dart';
import 'package:widget_catalog/pages/container_page.dart';
import 'package:widget_catalog/pages/dialog_page.dart';
import 'package:widget_catalog/pages/fancy_bottom_bar_page.dart';
import 'package:widget_catalog/pages/grid_view_page.dart';
import 'package:widget_catalog/pages/input_page.dart';
import 'package:widget_catalog/pages/list_view_page.dart';
import 'package:widget_catalog/pages/navigation_rail_page.dart';
import 'package:widget_catalog/pages/page_view_page.dart';
import 'package:widget_catalog/pages/single_child_scroll_page.dart';
import 'package:widget_catalog/pages/sliver_page.dart';
import 'package:widget_catalog/pages/speed_deal_page.dart';
import 'package:widget_catalog/pages/tab_bar_view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(DialogPage.id);
                  },
                  child: Text("Dialog and Drawer", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SingleChildScrollPage.id);
                  },
                  child: const Text("Single Child Scroll View", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ListViewPage.id);
                  },
                  child: const Text("List View", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(GridViewPage.id);
                  },
                  child: const Text("Grid View", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(PageViewPage.id);
                  },
                  child: const Text("Page View", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(TabBarViewPage.id);
                  },
                  child: const Text("TabBar View", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ContainerPage.id);
                  },
                  child: const Text("Decoration Container", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ButtonsPage.id);
                  },
                  child: const Text("Buttons", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(InputPage.id);
                  },
                  child: const Text("Text Fields", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SpeedDealPage.id);
                  },
                  child: const Text("Speed Deal", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(FancyBottomBarPage.id);
                  },
                  child: const Text("Fancy Bottom navigation Bar", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SliverPage.id);
                  },
                  child: const Text("Sliver App Bar", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(NavigationRailPage.id);
                  },
                  child: const Text("Navigation Rial", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).pushNamed(AnimationsPage.id);
                  },
                  child: const Text("Animations Page", style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                ),

                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
