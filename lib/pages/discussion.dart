import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import 'package:stock_prediction/components/tabSection.dart';
import 'package:stock_prediction/main.dart';
import '../components/discussModel.dart';
import '../components/queModel.dart';
import '../data_models/TweetsModel.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../dialgo_boxs/predictDialogBox.dart';
import '../font_helper/default_fonts.dart';
import 'package:http/http.dart' as http;

class DiscussionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DiscussionPageState();
  }

}

class _DiscussionPageState extends State<DiscussionPage>{
  var elevationValue = 0.0;

  List<TweetsModel> tweetsList = [];

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder(
        future: getTweets(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(child: Text('Loading...'),);
          } else {
            return ListView.builder(
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              itemCount: tweetsList.length,
              itemBuilder: (context, index) {
                var tweet = tweetsList[index];
                return GestureDetector(
                  onTap: (){
                    showDialogDiscuss(context);
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
    await http.get(Uri.parse('$globalApiUrl/tweets/list?username=${logusername}'));
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

  void showDialogDiscuss(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.80,
          maxChildSize: 0.96,
          minChildSize: 0.60,
          builder: (context, scrollContoller) => SingleChildScrollView(
            controller: scrollContoller,
            child: DiscussDialogBox(),
          ),
        ));
  }
}
