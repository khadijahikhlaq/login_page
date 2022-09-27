import 'package:flutter/material.dart';
void main() {
  runApp(Tabs());
}
class Tabs extends StatelessWidget {
  List names = [
    "khadijah", "mama", "papa", "bhaiya", "fatima", "amna", "hina", "hira", "adnan", "hiba", "ruqaiyaa"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("Whatsapp"),
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Icon(Icons.chat),
                    child: Text("Chats"),
                  ),
                  Tab(
                    icon: Icon(Icons.stop_circle_outlined),
                    child: Text("Status"),
                  ),
                  Tab(
                    icon: Icon(Icons.phone),
                    child: Text("Calls"),
                  ),
                  Tab(
                    icon: Icon(Icons.camera_alt),
                    child: Text("Camera"),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              ListView.separated(
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
              Container(
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Status",
                    labelText: "MyStatus",
                    prefixIcon: Icon(Icons.add),
                  ),
                ),
              ),
              Icon(Icons.phone, size: 300),
              Icon(Icons.camera_alt, size: 300),
            ],
          ),
        ),
      ),
    );
  }
}
