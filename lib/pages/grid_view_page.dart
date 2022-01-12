import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);
  static const String id = "grid_view_page";

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {

  DateTime date = DateTime.now();
  List avatars = [
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
    'assets/images/img_5.png',
    'assets/images/img_6.png',
    'assets/images/img_7.png',
    'assets/images/img_8.png',
    'assets/images/img_9.png',
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: avatars.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          childAspectRatio: 7 / 10,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return elementOfTable(avatars[index], "user ${index + 1}", "");
        },
      ),
    );
  }

  Widget elementOfTable(String image, String name, String title) {
    return Card(
      elevation: 20,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              height: 60,
              width: 60,
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          SizedBox(height: 10,),
          Text(name, style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
