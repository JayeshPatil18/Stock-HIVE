import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';

import '../components/queCard.dart';
import '../dialgo_boxs/discussionQue.dart';
import '../dialgo_boxs/quePrediction.dart';
import '../font_helper/default_fonts.dart';

class DiscussionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DiscussionPageState();
  }

}

class DiscussionPageState extends State<DiscussionPage>{
  var elevationValue = 0.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.date_range,
                                            size: 16),
                                        Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text("03/05/2022", style: textStyleMinDesc())),
                                      ],
                                    )),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                      radius: 10,
                                    ),
                                    Flexible(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Could I invest in TCS right now yes right now?',
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
                                          Icon(Icons.reply , color: true ? Colors.transparent : Colors.black,),
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
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.date_range,
                                            size: 16),
                                        Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text("03/05/2022", style: textStyleMinDesc())),
                                      ],
                                    )),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                      radius: 10,
                                    ),
                                    Flexible(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Could I invest in TCS right now yes right now?',
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
                                        Icon(Icons.reply , color: true ? Colors.transparent : Colors.black,),
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
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.date_range,
                                            size: 16),
                                        Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text("03/05/2022", style: textStyleMinDesc())),
                                      ],
                                    )),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                      radius: 10,
                                    ),
                                    Flexible(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Could I invest in TCS right now yes right now?',
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
                                        Icon(Icons.reply , color: true ? Colors.transparent : Colors.black,),
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
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showDialog(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(30)
            )
        ),
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.90,
          maxChildSize: 1.0,
          minChildSize: 0.60,
          builder: (context, scrollContoller) => SingleChildScrollView(
            child: DiscussionQue(),
          ),
        ));
  }
}
