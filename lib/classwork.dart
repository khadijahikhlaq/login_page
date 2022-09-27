import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(HomeWebViewExample());
}

class HomeWebViewExample extends StatefulWidget {
  const HomeWebViewExample({Key? key}) : super(key: key);

  @override
  State<HomeWebViewExample> createState() => _HomeWebViewExample();
}

class _HomeWebViewExample extends State<HomeWebViewExample> {
  @override
  void intState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  int selectedItemIndex = 0;
  List<String> links = [
    "https://www.togoparts.com/marketplace/create/",
    "https://www.togoparts.com/marketplace/browse?fbclid=IwAR1AhmvVHuTz07szd9FM88yTZbHUxgLOpdiKY55n9FXOOrtbZMcLq7oIZyM",
    "https://www.togoparts.com/bikeprofile/trides?fbclid=IwAR1AhmvVHuTz07szd9FM88yTZbHUxgLOpdiKY55n9FXOOrtbZMcLq7oIZyM",
    "https://www.togoparts.com/home",
  ];
  late WebViewController webViewController;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Web View"),
        ),
        body: Material(
          child: Center(
              child: WebView(
                  initialUrl: links.elementAt(selectedItemIndex),
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (c) {
                    webViewController = c;
                  })),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp), label: "product"),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: "gallery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "more"),
          ],
          currentIndex: selectedItemIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              webViewController.loadUrl(links.elementAt(selectedItemIndex));
              selectedItemIndex = index;
            });
          },
        ),
      ),
    );
  }
}
