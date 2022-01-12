import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);
  static const String id = "dialog_page";

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  void display() {
    if(Platform.isIOS) {
      _iosDialog();
    } else {
      _androidDialog();
    }
  }

  void _iosDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text("Log Out"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            CupertinoDialogAction(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text("Confirm"),
              onPressed: () {
              },
            ),
          ],
        );
      },
    );
  }

  void _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Log Out"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cencel")),
            TextButton(onPressed: () {}, child: Text("Confirm")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: ()  {
                 Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: () {
                _androidDialog();
              },
              child: Text(
                "Android Dialog",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: () {
                _iosDialog();
              },
              child: Text(
                "IOS Dialog",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 10,),
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: () {
                display();
              },
              child: Text(
                "Platform Dialog",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Fullname", style: TextStyle(color: Colors.white, fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("email@sahdjahd.com", style: TextStyle(color: Colors.white),)
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
