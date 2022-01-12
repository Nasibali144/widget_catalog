import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);
  static const String id = "buttons_page";

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {},
                child: Text("Sign In"),
                textColor: Colors.white,
                color: Colors.blueAccent,
                minWidth: 200,
                height: 50,
                shape: StadiumBorder(),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: GestureDetector(
              onTap: () {
                print("Button pressed!!!");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              child: Text("Click Me", style: TextStyle(color: Colors.blue, fontSize: 20),),
            ),
          ),

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: GestureDetector(
              onTap: () {
                print("Button pressed!!!");
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),
          ),

          Material(
            child: InkWell(
              onTap: () {
                print("Sign Up Pressed");
              },
              mouseCursor: MouseCursor.defer,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                alignment: Alignment.center,
                height: 50,
                width: 250,
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
              ),
            ),
          ),

          Container(
            height: 50,
            width: 250,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {},
              child: Material(
                color: Colors.greenAccent,
                shadowColor: Colors.green,
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
                // shape: StadiumBorder(),
                child: Center(child: Text("New Button",)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: Text("Click"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
