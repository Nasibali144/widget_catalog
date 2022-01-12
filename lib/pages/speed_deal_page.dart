import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDealPage extends StatefulWidget {
  const SpeedDealPage({Key? key}) : super(key: key);
  static const String id = "speed_deal_page";

  @override
  _SpeedDealPageState createState() => _SpeedDealPageState();
}

class _SpeedDealPageState extends State<SpeedDealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Speed Dial"),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 15,
        onOpen: () {
          print("Speed Dial Opened!");
        },
        onClose: () {
          print("Speed Dial Closed!");
        },
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
            child: Icon(Icons.share_outlined),
            label: "Share",
            labelStyle: TextStyle(fontSize: 18),
            onTap: () {}
          ),
          SpeedDialChild(
              child: Icon(Icons.edit),
              labelStyle: TextStyle(fontSize: 18),
              label: "Edit",
              onTap: () {}
          ),
          SpeedDialChild(
              child: Icon(Icons.update),
              label: "Update",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () {}
          )
        ],
      ),
    );
  }
}
