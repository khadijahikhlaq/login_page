import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Text("WhatsApp"),
      ),
      body: Material(
          child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Image.asset("my_assets/splash_logo@1x.png"),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                "Your account Information",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Name",
                      prefixIcon: Icon(Icons.accessibility),
                    ),
                  ))),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Code",
                labelText: "PIN Code",
                prefixIcon: Icon(Icons.app_registration),
              ),
            ),
          ),
          ),
          Expanded(
              child: Container(
                margin: EdgeInsets.only( bottom: 20, top: 10),
                child: ElevatedButton(
                  onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  child: Text("Verified"),


                ),
              )

          )
        ],
      )),
    ),
  ));
}
