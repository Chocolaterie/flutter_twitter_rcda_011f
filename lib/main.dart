import 'package:flutter/material.dart';
import 'package:tp_twitter/footer.dart';
import 'package:tp_twitter/header.dart';
import 'package:tp_twitter/login-page.dart';
import 'package:tp_twitter/tweet-content.dart';

import 'login-form.dart';

void main() {
  runApp(TPTwitterApp());
}

// L'application
class TPTwitterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TP Twitter",
      routes: {
        "/" : (context) => LoginPage(),
        "/tweet-list-page" : (context) => TwitterPage(),
      },
    );
  }
}

// La page
class TwitterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page twitter"),),
      body: Column(
        children: [
          HeaderComponent(),
          Expanded(child: Column(
            children: [
              // La carte tweet
              TwitterContent(),
            ],
          )),
          FooterComponent(),
        ],
      ),
    );
  }

}
