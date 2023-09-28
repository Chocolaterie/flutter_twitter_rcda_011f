import 'package:flutter/material.dart';

class TwitterButton extends StatelessWidget {

  String imgPath;

  TwitterButton(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Image.asset(this.imgPath));
  }
}

class TwitterContent extends StatefulWidget {

  @override
  State<TwitterContent> createState() => _TwitterContentState();
}

class _TwitterContentState extends State<TwitterContent> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          // Le bouton rafraichir
          ElevatedButton(onPressed: () {}, child: Text("Rafraîchir")),
          // Ma carte tweet
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width:180, child: Image.asset("images/profil_placeholder.jpg")),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("LaCrevete@chocolatine.com"),
                      ),
                      Text("Lorem ipsuqsdk qsjdln sqjndj qsjdjq sjdqn")
                    ],),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TwitterButton("images/reply.png"),
                  TwitterButton("images/retweet.png"),
                  TwitterButton("images/favorite.png"),
                ],),
            )
          ],
    ),
        ],
      );
  }
}