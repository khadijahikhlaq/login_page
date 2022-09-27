import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "";
  var textFieldHolder = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("statefull widget"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                  child: TextField(
                    controller: textFieldHolder,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      labelText: "FullName",
                    ),
                    // onChanged: (String name) {
                    //   setState(() {
                    //     text = name;
                    //   });
                   //},
                  ),
                ),
              ),
            Text(text),
            ElevatedButton(
                onPressed: (){
              setState(() {
                text = textFieldHolder.text;
              });
            },
                child: Text("show data"))
          ],
        ),
      ),
    );
  }
}
