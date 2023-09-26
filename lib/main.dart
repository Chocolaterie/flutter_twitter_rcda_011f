import 'package:flutter/material.dart';
import 'package:tp_twitter/footer.dart';
import 'package:tp_twitter/header.dart';
import 'package:tp_twitter/tweet-content.dart';

void main() {
  runApp(TPTwitterApp());
}

// L'application
class TPTwitterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TP Twitter",
      home: HomePage()
    );
  }
}

// La page
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page d'Accueil"),),
      body: Column(
        children: [
          HeaderComponent(),
          // La carte tweet
          Expanded(child: TwitterContent()),
          FooterComponent(),
        ],
      ),
    );
  }

}
