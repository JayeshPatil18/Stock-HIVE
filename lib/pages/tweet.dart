import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/data_models/TweetsModel.dart';
import 'package:stock_prediction/main.dart';
import '../color_helper/defaultColor.dart';
import '../components/discussModel.dart';
import '../components/tabSection.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../font_helper/default_fonts.dart';
import '../service_provider/TweetService.dart';
import 'package:http/http.dart' as http;

class TweetPage extends StatefulWidget {
  String tId;

  TweetPage({required this.tId});

  @override
  State<StatefulWidget> createState() {
    return TweetPageState(tId);
  }
}

class TweetPageState extends State<TweetPage> {
  int tId = -1;

  var elevationValue = 0.0;
  List<TweetsModel> tweetsList = [];
  List<TweetsModel> commentsList = [];

  TweetPageState(String tId) {
    this.tId = int.parse(tId);
  }

  Future _refreshTweets() async {
    var list = await getTweet(tId, logusername);
    setState(() {
      tweetsList.clear();
      tweetsList = list;
    });
  }

  Future _refreshComments() async {
    var list = await getComments();
    setState(() {
      commentsList.clear();
      commentsList = list;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: appBarElevation,
        backgroundColor: Colors.white,
        title: Text(
          'Tweet',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: _refreshComments,
        child: Column(
          children: [
            FutureBuilder(
              future: getTweet(tId, logusername),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (tweetsList.isEmpty) {
                  return SizedBox(
                      height: 151,
                      child: const Center(child: CircularProgressIndicator()));
                } else {
                  var tweet = tweetsList[0];
                  return DiscussModel(
                    tId: tweet.tId.toString(),
                    fullname: tweet.fullname.toString(),
                    username: tweet.username.toString(),
                    tTxt: tweet.tTxt.toString(),
                    tDate: tweet.tDateTime.toString(),
                    tLikes: tweet.tLikes.toString(),
                    tComments: tweet.tComments.toString(),
                    tUrl: tweet.tUrl.toString(),
                    isLiked: tweet.isLiked.toString(),
                  );
                }
              },
            ),
            Container(
              color: Colors.grey,
              height: 0.2,
            ),
            Expanded(
              child: Container(
                color: defaultBgColor(),
                child: FutureBuilder(
                  future: getComments(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (commentsList.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          itemCount: commentsList.length,
                          itemBuilder: (context, index) {
                            var tweet = commentsList[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TweetPage(
                                              tId: tweet.tId.toString()
                                            ))).then((value) => setState(() {
                                      _refreshComments();
                                    }));
                              },
                              child: Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  width: double.infinity,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    elevation: elevationValue,
                                    child: DiscussModel(
                                      tId: tweet.tId.toString(),
                                      fullname: tweet.fullname.toString(),
                                      username: tweet.username.toString(),
                                      tTxt: tweet.tTxt.toString(),
                                      tDate: tweet.tDateTime.toString(),
                                      tLikes: tweet.tLikes.toString(),
                                      tComments: tweet.tComments.toString(),
                                      tUrl: tweet.tUrl.toString(),
                                      isLiked: tweet.isLiked.toString(),
                                    ),
                                  )),
                            );
                          });
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<TweetsModel>> getTweet(int t_id, String username) async{

    final response =
    await http.get(Uri.parse('$globalApiUrl/tweets/tweet?username=${username}&t_id=${t_id}'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map i in data) {
        tweetsList.add(TweetsModel.fromJson(i));
      }
      return tweetsList;
    } else {
      return tweetsList;
    }
  }

  Future<List<TweetsModel>> getComments() async {
    final response = await http
        .get(Uri.parse('$globalApiUrl/tweets/list?username=${logusername}'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map i in data) {
        commentsList.add(TweetsModel.fromJson(i));
      }
      return commentsList;
    } else {
      return commentsList;
    }
  }
}
