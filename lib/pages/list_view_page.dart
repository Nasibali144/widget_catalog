import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);
  static const String id = "list_view_page";

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  DateTime date = DateTime.now();
  List list = [Colors.blueAccent,  Colors.yellowAccent, Colors.greenAccent, Colors.purpleAccent, Colors.yellowAccent];
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: avatars.length,
        itemBuilder: (context, index) {
          return itemOfContact(index);
        },
      ),
    );
  }

  Widget itemOfContact(int index) {
    return ListTile(
      onTap: () {},
      // dense: true,
      leading: ClipRRect(
        child: Image(
          image: AssetImage(avatars[index]),
          fit: BoxFit.cover,
          height: 60,
          width: 60,
        ),
        borderRadius: BorderRadius.circular(60),
      ),
      title: Text("User $index"),
      subtitle: Text("${DateTime.now().hour >= 10  ? date.hour.toString() : "0" + date.hour.toString()} : ${DateTime.now().minute}"),
      trailing: Icon(Icons.send),
    );
  }

  Widget itemOfList(int index) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: list[index],
    );
  }
}
