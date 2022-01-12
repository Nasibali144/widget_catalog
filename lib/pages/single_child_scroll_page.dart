import 'package:flutter/material.dart';

class SingleChildScrollPage extends StatefulWidget {
  const SingleChildScrollPage({Key? key}) : super(key: key);
  static const String id = "single_child_scroll_page";

  @override
  _SingleChildScrollPageState createState() => _SingleChildScrollPageState();
}

class _SingleChildScrollPageState extends State<SingleChildScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.pink,
            ),

            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.greenAccent,
            ),

            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellowAccent,
            ),

            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
