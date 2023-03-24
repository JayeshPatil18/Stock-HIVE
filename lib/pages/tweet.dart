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

class TweetPage extends StatefulWidget {
  String tId;
  TweetsModel tweetsModel;

  TweetPage({required this.tId,
  required this.tweetsModel});

  @override
  State<StatefulWidget> createState() {
    return TweetPageState(tId);
  }
}

class TweetPageState extends State<TweetPage> {
  int tId = -1;
  late TweetsModel tweet;

  TweetPageState(String tId) {
    this.tId = int.parse(tId);
  }

  fetchTweet() async {
    tweet = await getTweet(tId, logusername);
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
      body: Container(
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
          ],
        ),
      ),
    );
  }
}
