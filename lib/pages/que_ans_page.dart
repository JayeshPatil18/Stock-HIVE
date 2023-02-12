import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../color_helper/defaultColor.dart';
import '../dialgo_boxs/discussionQue.dart';
import '../font_helper/default_fonts.dart';

class QueAnsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QueAnsPageState();
  }

}

class QueAnsPageState extends State<QueAnsPage>{
  var elevationValue = 0.0;
  static int currentIndex = 0;

  static final sectionDialog = <Widget>[
    DiscussionQue(),
    DiscussionQueSecondary(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Que & Ans',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          color: defaultBgColor(),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
              child: Column(
                children: [
                  TabSection(),
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
      )
    );
  }

  void showDialog(BuildContext context) {
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
            child: sectionDialog[currentIndex],
          ),
        ));
  }
}

class TabSection extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TabSectionState();
  }
}

class TabSectionState extends State<TabSection>{

  List<String> items = [
    'Questions Asked',
    'Questions Answered'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState((){
                  QueAnsPageState.currentIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: QueAnsPageState.currentIndex == index ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(14)
                ),
                margin: EdgeInsets.only(right: 10),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(items[index], style: TextStyle(color: QueAnsPageState.currentIndex == index ? Colors.white : Colors.black),),
                )),
              ),
            );
          }
      ),
    );
  }
}