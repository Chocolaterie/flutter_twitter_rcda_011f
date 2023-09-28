class Tweet {

  int id;
  String author;
  String message;

  Tweet(this.id, this.author, this.message);

  /**
   * Mapping JSON à la main
   */
  static Tweet jsonToTweet(Map<String, dynamic> json){
    return Tweet(json['id'], json['author'], json['message']);
  }

}