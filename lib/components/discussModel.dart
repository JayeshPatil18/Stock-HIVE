import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/main.dart';
import 'package:stock_prediction/service_provider/TweetService.dart';

class DiscussModel extends StatefulWidget {
  String tId;
  String fullname;
  String username;
  String tTxt;
  String tDate;
  String tUrl;
  String tLikes;
  String tComments;
  String isLiked;

  DiscussModel(
      {required this.tId,
      required this.fullname,
      required this.username,
      required this.tTxt,
      required this.tDate,
      required this.tUrl,
      required this.tLikes,
      required this.tComments,
        required this.isLiked});

  @override
  State<StatefulWidget> createState() {
    return DiscussModelState(
        tId, tLikes, tComments, fullname, username, tTxt, tDate, tUrl, isLiked);
  }
}

class DiscussModelState extends State<DiscussModel> {
  int tId = -1;
  String fullname = "null";
  String username = "null";
  String tTxt = "null";
  String tDate = "null";
  String tUrl = "null";
  String tLikes = "null";
  String tComments = "null";

  bool isLiked = false;

  DiscussModelState(
      String tId,
      String tLikes,
      String tComments,
      String fullname,
      String username,
      String tTxt,
      String tDate,
      String tUrl,
      String isLiked) {
    this.tId = int.parse(tId);
    this.fullname = fullname;
    this.username = username;
    this.tTxt = tTxt;
    this.tUrl = tUrl != "img_url" ? tUrl : "null";
    this.tLikes = tLikes;
    this.tComments = tComments;
    this.tDate = timeAgoCustom(DateTime.parse(tDate));
    this.isLiked = isLiked == "1" ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      child: tUrl != "null"
                          ? CircleAvatar(
                        backgroundImage: NetworkImage(tUrl),
                        radius: 22,
                      )
                          : const CircleAvatar(
                        backgroundImage:
                        AssetImage("assets/icons/default_avatar.jpg"),
                        radius: 22,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fullname,
                          style: textTweetName(),
                        ),
                        Text(
                          username,
                          style: textTweetUsername(
                              textColor: const Color(0xFF797979)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                tDate,
                style: textTweetDate(textColor: const Color(0xFF797979)),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 16),
              child: Text(
                tTxt,
                style: textTweet(),
              )),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/comment.svg',
                width: 20.0,
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text(tComments),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () async {
                  setState(() {
                    if(isLiked) {
                      tLikes = (int.parse(tLikes) - 1).toString();
                    }else{
                      tLikes = (int.parse(tLikes) + 1).toString();
                    }
                    isLiked = isLiked ? false : true;
                  });
                  bool result = await updateLike(tId);
                  if(!result){
                    setState(() {
                      if(isLiked) {
                        tLikes = (int.parse(tLikes) - 1).toString();
                      }else{
                        tLikes = (int.parse(tLikes) + 1).toString();
                      }
                      isLiked = isLiked ? false : true;
                    });
                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Something Went Wrong.')));
                  }
                },
                child: isLiked
                    ? Image.asset(
                  'assets/icons/liked.png',
                  width: 20.0,
                  height: 20.0,
                )
                    : SvgPicture.asset(
                  'assets/svgs/heart.svg',
                  width: 20.0,
                  height: 20.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text(tLikes),
              ),
            ],
          )
        ],
      ),
    );
  }

  String timeAgoCustom(DateTime d) {
    // <-- Custom method Time Show  (Display Example  ==> 'Today 7:00 PM')     // WhatsApp Time Show Status Shimila
    Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365)
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    if (diff.inDays > 30)
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    if (diff.inDays > 7)
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    if (diff.inDays > 0) return "${DateFormat.E().add_jm().format(d)}";
    if (diff.inHours > 0) return "Today ${DateFormat('jm').format(d)}";
    if (diff.inMinutes > 0)
      return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
    return "just now";
  }
}
