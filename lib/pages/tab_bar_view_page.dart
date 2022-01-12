import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {
  const TabBarViewPage({Key? key}) : super(key: key);
  static const String id = "tab_bar_page_view";

  @override
  _TabBarViewPageState createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade700,
          centerTitle: true,
          title: Text("Tab Bar View"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.image),
                text: 'Image',
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
                text: 'Account',
              ),
            ],
          ),
        ),
        body: TabBarView(
          // physics: NeverScrollableScrollPhysics(),
          // dragStartBehavior:  DragStartBehavior.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.pink,
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.greenAccent,
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}
