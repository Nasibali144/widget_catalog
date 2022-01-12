import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);
  static const String id = "container_page";

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe0e0e0),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("PDP"),
        centerTitle: true,
      ),
      body: Center(
        // child: Container(
        //   height: 200,
        //   width: 200,
        //   decoration: BoxDecoration(
        //     color: Colors.blue,
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/img.png"),
        //       fit: BoxFit.cover,
        //     ),
        //     borderRadius: BorderRadius.circular(20),
        //       boxShadow: [
        //         BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 3, offset: Offset(10, 10)),
        //         // BoxShadow(color: Colors.red, blurRadius: 10, spreadRadius: 3, offset: Offset(10, 10))
        //       ],
        //   ),
        //   child: Container(
        //     decoration: BoxDecoration(
        //
        //         borderRadius: BorderRadius.circular(20),
        //         gradient: LinearGradient(
        //             begin: Alignment.bottomRight,
        //             colors: [
        //               Colors.black.withOpacity(0.5),
        //               Colors.black.withOpacity(0.35),
        //               Colors.black.withOpacity(0.2),
        //               Colors.black.withOpacity(0.1),
        //             ]
        //         ),
        //     ),
        //   ),
        // ),

        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment(-1,-1),
                end: Alignment(1,1),
              colors: [
                Color(0xFFCACACA),
                Color(0xFFF0F0F0),
              ]
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(12, 12),
                blurRadius: 24,
                color: Color(0xffa4a4a4)
              ),
              BoxShadow(
                  offset: Offset(-12, -12),
                  blurRadius: 24,
                  color: Color(0xffffffff)
              ),
            ]
          ),

        ),
      ),
    );
  }
}
