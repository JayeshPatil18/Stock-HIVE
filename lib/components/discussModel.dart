import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';
import 'buttonsOption.dart';
import 'package:intl/intl.dart';


class DiscussModel extends StatefulWidget{

  String username;
  String tTxt;
  String tDate;
  String tUrl;

  DiscussModel({
    required this.username,
    required this.tTxt,
    required this.tDate,
    required this.tUrl
});

  @override
  State<StatefulWidget> createState() {
    return DiscussModelState(username,tTxt,tDate,tUrl);
  }

}

class DiscussModelState extends State<DiscussModel>{

  String username = "null";
  String tTxt = "null";
  String tDate = "null";
  String tUrl = "null";

  DiscussModelState(String username, String tTxt, String tDate, String tUrl){
    this.username = username;
    this.tTxt = tTxt;
    this.tUrl = tUrl;

    this.tDate = timeAgoCustom(DateTime.parse(tDate));
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_outline,
                          size: 16),
                      Container(
                          margin: EdgeInsets.only(left: 4),
                          child: Text(username, style: textStyleMinDesc())),
                    ],
                  ),
                  Row(
                    children: [
                      // Icon(Icons.date_range,
                      //     size: 16),
                      Container(
                          margin: EdgeInsets.only(left: 4),
                          child: Text(tDate, style: textStyleMinDesc())),
                    ],
                  ),
                ],
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(tUrl),
                radius: 10,
              ),
              Flexible(
                child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(tTxt,
                      style: textStyleDefault(),
                    )),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 1,
            color: defaultBgColor(),
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Replies: ',
                      style: textStyleBtn()),
                  Text('12', style: textStyleBtn()),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.reply , color: Colors.black, size: 22,),
                  Text('Reply', style: textStyleBtn()),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(tUrl),
                          radius: 10,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10, bottom: 10),
                            child: Text('Jayesh Patil',
                                style: textStyleBtn())),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: (){
                            },
                            child: Icon(Icons.favorite_border, size: 20,)),
                        Text('10', style: textStyleSubTitle()),
                      ],
                    ),
                  ],
                ),
                Text(
                    'Making investment decisions requires a thorough analysis of various factors.',
                    style: textStyleSubTitle())
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                          radius: 10,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10, bottom: 10),
                            child: Text('Jayesh Patil',
                                style: textStyleBtn())),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_border, size: 20,),
                        Text('10', style: textStyleSubTitle()),
                      ],
                    ),
                  ],
                ),
                Text(
                    'Making investment decisions requires a thorough analysis of various factors.',
                    style: textStyleSubTitle())
              ],
            ),
          ),
        ],
      ),
    );
  }

  String timeAgoCustom(DateTime d) {             // <-- Custom method Time Show  (Display Example  ==> 'Today 7:00 PM')     // WhatsApp Time Show Status Shimila
    Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365)
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    if (diff.inDays > 30)
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    if (diff.inDays > 7)
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    if (diff.inDays > 0)
      return "${DateFormat.E().add_jm().format(d)}";
    if (diff.inHours > 0)
      return "Today ${DateFormat('jm').format(d)}";
    if (diff.inMinutes > 0)
      return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
    return "just now";
  }
}