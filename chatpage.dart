import 'package:flutter/material.dart';

void main() {
  runApp(MyCustomWidget());
}

class MyCustomWidget extends StatelessWidget {
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
          child: ListView.separated(
            itemCount: names.length,
            separatorBuilder: (BuildContext context, int item) {
              return Divider(
                height: 1,
              );
            },
            itemBuilder: (BuildContext context, int item) {
              return ListTile(
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.chat),
                title: Text(names[item]),
                subtitle: Text(""),
              );
            },
          ),
        ),
      ),
    );
  }
}
