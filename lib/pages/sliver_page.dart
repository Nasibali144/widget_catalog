import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);
  static const String id = "sliver_page";

  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              floating: false,
              // snap: true,
              pinned: true,
              elevation: 50,
              backgroundColor: Colors.blueGrey.shade700,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Hotel"),
                background: Image(
                  image: AssetImage("assets/images/hotel.jpg"),
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: ListTile(
                      title: Text("Hotel $index"),
                      subtitle: Text("Cost: \$${(index + 1) * 100 + index + 12}"),
                      trailing: Icon(Icons.phone),
                    ),
                  );
                },
              childCount: 50
            ),),
          ],
        ),
      ),
    );
  }
}
