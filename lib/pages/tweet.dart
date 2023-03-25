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
  TweetsModel tweetsModel;

  TweetPage({required this.tId, required this.tweetsModel});

  @override
  State<StatefulWidget> createState() {
    return TweetPageState(tId);
  }
}

class TweetPageState extends State<TweetPage> {
  int tId = -1;
  late TweetsModel tweet;

  var elevationValue = 0.0;
  List<TweetsModel> tweetsList = [];

  TweetPageState(String tId) {
    this.tId = int.parse(tId);
  }

  fetchTweet() async {
    tweet = await getTweet(tId, logusername);
  }

  Future _refresh() async {
    var list = await getTweets();
    setState(() {
      tweetsList.clear();
      tweetsList = list;
    });
  }

  @override
  void initState() {
    super.initState();
    tweet = widget.tweetsModel;
    fetchTweet();
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
        onRefresh: _refresh,
        child: Column(
          children: [
            DiscussModel(
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
            Container(
              color: Colors.grey,
              height: 0.2,
            ),
            Expanded(
              child: Container(
                color: defaultBgColor(),
                child: FutureBuilder(
                  future: getTweets(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (tweetsList.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          itemCount: tweetsList.length,
                          itemBuilder: (context, index) {
                            var tweet = tweetsList[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TweetPage(
                                              tId: tweet.tId.toString(),
                                              tweetsModel: tweet,
                                            ))).then((value) => setState(() {
                                      _refresh();
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

  Future<List<TweetsModel>> getTweets() async {
    final response = await http
        .get(Uri.parse('$globalApiUrl/tweets/list?username=${logusername}'));
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
}
