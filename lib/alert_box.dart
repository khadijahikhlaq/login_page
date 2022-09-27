import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Facebook"),
        foregroundColor: Colors.white,
      ),
      body: Material(
        child: MyAlert(),
      ),
    ),
  ),
  );
}

class MyAlert extends StatefulWidget {
  const MyAlert({Key? key}) : super(key: key);

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("show dialog"),
      onPressed: () {
        openDialogBox(context);
      },
    );}
}
 openDialogBox(BuildContext context){
  AlertDialog dialog = AlertDialog(
    title: Text("Confirmation"),
    content: Text("Are you sure want to logout?"),
    actions: [
      TextButton(onPressed: (){}, child: Text("Yes")),
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("No")),
    ],
  );
  showDialog(context: context, builder: (context){
return AlertDialog();});
}
