import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data_models/TweetsModel.dart';
import 'package:http/http.dart' as http;
import '../main.dart';
import '../pages/tweet.dart';
import '../utils/token_helper.dart';
import 'discussModel.dart';

class TweetsTabView extends StatefulWidget{

  final userId;

  TweetsTabView({
    required this.userId
  });

  @override
  State<StatefulWidget> createState() {
    return TweetsTabViewState(userId);
  }
}

class TweetsTabViewState extends State<TweetsTabView>{
  var elevationValue = 0.0;
  List<TweetsModel> tweetsList = [];

  int? userId;

  TweetsTabViewState(int userId) {
    this.userId = userId;
  }


  Future _refresh() async{
    var list = await getTweets();
    setState(() {
      tweetsList.clear();
      tweetsList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async{
        _refresh();
      },
      child: FutureBuilder(
        future: getTweets(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                padding: const EdgeInsets.only(bottom: 80, left: 10, right: 10),
                itemCount: tweetsList.length,
                itemBuilder: (context, index) {
                  var tweet = tweetsList[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TweetPage(tId: tweet.tId.toString())))
                          .then((value) => setState(() {
                        _refresh();
                      }));
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: DiscussModel(tId: tweet.tId.toString(), fullname: tweet.fullname.toString(), username: tweet.username.toString(), tTxt: tweet.tTxt.toString(), tDate: tweet.tDateTime.toString(), tLikes: tweet.tLikes.toString(), tComments: tweet.tComments.toString(), tUrl: tweet.tUrl.toString(), isLiked: tweet.isLiked.toString(),),
                        )),
                  );
                }
            );
          }
        },
      ),
    );
  }

  Future<List<TweetsModel>> getTweets() async {
    final response =
    await http.get(Uri.parse('$globalApiUrl/users/tweets?userId=${userId}'));
    var data = jsonDecode(response.body);
    tweetsList.clear();
    if (response.statusCode == 200) {
      for (Map i in data) {
        tweetsList.add(TweetsModel.fromJson(i));
      }
      return tweetsList;
    } else {
      return tweetsList;
    }
  }
}

class RepliesTabView extends StatefulWidget{
  final userId;

  RepliesTabView({
    required this.userId
  });

  @override
  State<StatefulWidget> createState() {
    return RepliesTabViewState(userId);
  }
}

class RepliesTabViewState extends State<RepliesTabView>{
  var elevationValue = 0.0;
  List<TweetsModel> tweetsList = [];

  int? userId;

  RepliesTabViewState(int userId) {
    this.userId = userId;
  }

  Future _refresh() async{
    var list = await getTweets();
    setState(() {
      tweetsList.clear();
      tweetsList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async{
        _refresh();
      },
      child: FutureBuilder(
        future: getTweets(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                padding: const EdgeInsets.only(bottom: 80, left: 10, right: 10),
                itemCount: tweetsList.length,
                itemBuilder: (context, index) {
                  var tweet = tweetsList[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TweetPage(tId: tweet.tParent.toString())))
                          .then((value) => setState(() {
                        _refresh();
                      }));
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: DiscussModel(tId: tweet.tId.toString(), fullname: tweet.fullname.toString(), username: tweet.username.toString(), tTxt: tweet.tTxt.toString(), tDate: tweet.tDateTime.toString(), tLikes: tweet.tLikes.toString(), tComments: tweet.tComments.toString(), tUrl: tweet.tUrl.toString(), isLiked: tweet.isLiked.toString(),),
                        )),
                  );
                }
            );
          }
        },
      ),
    );
  }

  Future<List<TweetsModel>> getTweets() async {
    final response =
    await http.get(Uri.parse('$globalApiUrl/users/comments?userId=${userId}'));
    var data = jsonDecode(response.body);
    tweetsList.clear();
    if (response.statusCode == 200) {
      for (Map i in data) {
        tweetsList.add(TweetsModel.fromJson(i));
      }
      return tweetsList;
    } else {
      return tweetsList;
    }
  }
}

class LikesTabView extends StatefulWidget{

  final userId;

  LikesTabView({
    required this.userId
  });

  @override
  State<StatefulWidget> createState() {
    return LikesTabViewState(userId);
  }
}

class LikesTabViewState extends State<LikesTabView>{
  var elevationValue = 0.0;
  List<TweetsModel> tweetsList = [];

  int? userId;

  LikesTabViewState(int userId) {
    this.userId = userId;
  }

  Future _refresh() async{
    var list = await getTweets();
    setState(() {
      tweetsList.clear();
      tweetsList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async{
        _refresh();
      },
      child: FutureBuilder(
        future: getTweets(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                padding: const EdgeInsets.only(bottom: 80, left: 10, right: 10),
                itemCount: tweetsList.length,
                itemBuilder: (context, index) {
                  var tweet = tweetsList[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TweetPage(tId: tweet.tId.toString())))
                          .then((value) => setState(() {
                        _refresh();
                      }));
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: DiscussModel(tId: tweet.tId.toString(), fullname: tweet.fullname.toString(), username: tweet.username.toString(), tTxt: tweet.tTxt.toString(), tDate: tweet.tDateTime.toString(), tLikes: tweet.tLikes.toString(), tComments: tweet.tComments.toString(), tUrl: tweet.tUrl.toString(), isLiked: tweet.isLiked.toString(),),
                        )),
                  );
                }
            );
          }
        },
      ),
    );
  }

  Future<List<TweetsModel>> getTweets() async {
    final response =
    await http.get(Uri.parse('$globalApiUrl/users/likes?userId=${userId}'));
    var data = jsonDecode(response.body);
    tweetsList.clear();
    if (response.statusCode == 200) {
      for (Map i in data) {
        tweetsList.add(TweetsModel.fromJson(i));
      }
      return tweetsList;
    } else {
      return tweetsList;
    }
  }
}