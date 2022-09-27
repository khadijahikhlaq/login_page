import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List names = ["Khadijah", "Fatima", "Amna", "Hira", "Mubashara"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("chats"),
        ),
        body: Material(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int item) {
              return Container(
                height: 20,
                alignment: Alignment.center,
                color: Colors.black,
                //child: Text(names[item]),
              );
            }
          ),
        ),
      ),
    );
  }
}
