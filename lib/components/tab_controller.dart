import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import '../color_helper/defaultColor.dart';
import '../dialgo_boxs/discussionQue.dart';
import '../pages/que_ans_page.dart';

class ProfileTabs extends StatelessWidget {
  var elevationValue = 0.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Container(
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.person,
                                size: 80,
                              )),
                          backgroundColor: Colors.black12,
                          radius: 50,
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: starColor(),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: starColor(),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: starColor(),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: defaultBgColor(),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: defaultBgColor(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 6),
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Text('Jayesh Patil',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline1!
                                                      .copyWith(fontSize: 25))),
                                          Container(
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(top: 6),
                                              child: Text('@username',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .subtitle2!
                                                      .copyWith(fontSize: 16)))
                                        ],
                                      )),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.only(left: 10, right: 5),
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.account_balance_wallet_outlined, size: 16,),
                                          Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text(
                                              'Revenue',
                                              style: textStyleSubTitle(
                                                  textColor: Colors.black),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '1000',
                                        style: textStyleDefault(
                                            textColor: Colors.black),
                                      ),
                                      Icon(
                                        Icons.currency_rupee,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.only(left: 5, right: 5),
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.card_giftcard, size: 16,),
                                          Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text(
                                              'Points',
                                              style: textStyleSubTitle(
                                                  textColor: Colors.black),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '1000',
                                        style: textStyleDefault(
                                            textColor: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.only(left: 5, right: 10),
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.leaderboard_outlined, size: 16,),
                                          Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text(
                                              'Rank',
                                              style: textStyleSubTitle(
                                                  textColor: Colors.black),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '#',
                                        style: textStyleDefault(
                                            textColor: Colors.black),
                                      ),
                                      Text(
                                        '1000',
                                        style: textStyleDefault(
                                            textColor: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Que & Ans', style: textStyleDefault()),
                        OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                            ),
                              onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => QueAnsPage()));
                              },
                              child: Text('View All', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                            ),
                      ],
                    ),
                  ),
                  Container(
                    color: defaultBgColor(),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showDialog(context);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                          width: (MediaQuery.of(context).size.width) - 40,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          elevation: elevationValue,
                                          child: Container(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              children: [
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
                                                            style: textStyleDefault(), textAlign: TextAlign.start,
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
                                                      Container(
                                                        width: double.infinity,
                                                        child: Text(
                                                            'Making investment decisions requires a thorough analysis of various factors.',
                                                            style: textStyleSubTitle()),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(context);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width: (MediaQuery.of(context).size.width) - 40,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          elevation: elevationValue,
                                          child: Container(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              children: [
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
                                                            style: textStyleDefault(), textAlign: TextAlign.start,
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
                                                      Container(
                                                        width: double.infinity,
                                                        child: Text(
                                                            'Making investment decisions requires a thorough analysis of various factors.',
                                                            style: textStyleSubTitle()),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.card_giftcard, size: 20,),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text('Invite and Win',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2!
                                                  .copyWith(fontSize: 16)),
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios, size: 20,),
                                  ],
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                color: defaultBgColor(),
                                width: double.infinity,
                                height: 1,
                              ),
                              Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.privacy_tip_outlined, size: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text('Privacy Policy',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(fontSize: 16)),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, size: 20,),
                                    ],
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                color: defaultBgColor(),
                                width: double.infinity,
                                height: 1,
                              ),
                              Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.note_alt_outlined, size: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text('Terms and Conditions',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(fontSize: 16)),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, size: 20,),
                                    ],
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                color: defaultBgColor(),
                                width: double.infinity,
                                height: 1,
                              ),
                              Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.logout, size: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text('Logout',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(fontSize: 16)),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, size: 20,),
                                    ],
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                color: defaultBgColor(),
                                width: double.infinity,
                                height: 1,
                              ),
                            ],
                          ),
                  ),
                ],
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
