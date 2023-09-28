import 'package:flutter/material.dart';
import 'package:tp_twitter/tweet.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

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

  // Une liste de tweets
  List<Tweet> tweets = [];

  void callApi() async {
    // J'appel l'api
    var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json"));

    // Stocker les données de la réponse en Json
    var json = convert.jsonDecode(response.body);

    // Je convertis la liste des données JSON en Liste d'objet Tweet
    tweets = List<Tweet>.from(json.map((tweetJson) => Tweet.jsonToTweet(tweetJson)));

    // Rafraichir l'ecran
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          // Le bouton rafraichir
          ElevatedButton(onPressed: () { callApi(); }, child: Text("Rafraîchir")),
          // Ma carte tweet
          Expanded(
            child: ListView.builder(
              itemCount: tweets.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 180,
                            child: Image.asset("images/profil_placeholder.jpg")),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(tweets[index].author),
                                ),
                                Text(tweets[index].message)
                              ],),
                          ),
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
                );
              },
            ),
          ),
        ],
      );
  }
}