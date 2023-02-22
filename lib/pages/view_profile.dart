import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../color_helper/defaultColor.dart';
import '../components/discussModel.dart';
import '../components/tabSection.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../font_helper/default_fonts.dart';

class ViewProfile extends StatelessWidget{

  var elevationValue = 0.0;

  static final sectionDialog = <Widget>[
    DiscussDialogBox(),
    DiscussDialogBoxSecondary(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
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
                  ],
                ),
              ),
              Container(
                color: defaultBgColor(),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                    child: Column(
                      children: [
                        TabSection2(),
                        InkWell(
                          onTap: () {
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
                                child: DiscussModel(username: 'nahila', tTxt: 'What about adani', tDate: '2018-10-20T00:00:00.000Z', tUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s',),
                              )),
                        ),
                        InkWell(
                          onTap: () {
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
                                child: DiscussModel(username: 'nahila', tTxt: 'What about adani', tDate: '2018-10-20T00:00:00.000Z', tUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s',),
                              )),
                        ),
                        InkWell(
                          onTap: () {
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
                                  child: DiscussModel(username: 'nahila', tTxt: 'What about adani', tDate: '2018-10-20T00:00:00.000Z', tUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s',)
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
            child: sectionDialog[TabSection2State.currentIndex],
          ),
        ));
  }
}