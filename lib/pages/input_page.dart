import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  static const String id = "input_page";

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isNotHide = true;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Text Fields"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: TextField(
                controller: controller,
                style: TextStyle(color: Colors.black, fontSize: 20),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isNotHide,
                obscuringCharacter: " ",
                onSubmitted: (text) {
                  print("Submited text: $text");
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(
                          isNotHide ? Icons.visibility : Icons.visibility_off, color: Colors.grey,),
                      onPressed: () {
                        setState(() {
                          isNotHide = !isNotHide;
                        });
                      },
                    )),
                // onChanged: (text) {
                //   print(text);
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
