import 'package:flutter/material.dart';
import 'package:tp_twitter/footer.dart';
import 'package:tp_twitter/header.dart';

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
          Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width:180, child: Image.network("https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_23/3480975/210607-doge-meme-2x1-se-431p.jpg")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("LaCrevete@chocolatine.com"),
                      Text("Lorem ipsuqsdk qsjdln sqjndj qsjdjq sjdqn")
                    ],),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text("Répondre"),
                    Text("Retweet"),
                    Text("Favoris"),
                  ],),
                )
              ],
          )),
          FooterComponent(),
        ],
      ),
    );
  }

}
