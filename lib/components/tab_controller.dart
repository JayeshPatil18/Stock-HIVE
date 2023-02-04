import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import '../color_helper/defaultColor.dart';

class ProfileTabs extends StatelessWidget {
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
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/stock_graph.png'),
                              Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(bottom: 4),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        ImageIcon(AssetImage('assets/icons/sPrediction.png'), size: 18,),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 4),
                                                          child: Text(
                                                            'Correct Predict',
                                                            style: textStyleSubTitle(
                                                                textColor: Colors.black),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                                Text(
                                                      '11',
                                                      style: textStyleDefault(
                                                          textColor: Colors.black),
                                                    )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(bottom: 4),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.emoji_events_outlined, size: 18,),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 4),
                                                          child: Text(
                                                            'Won Contest',
                                                            style: textStyleSubTitle(
                                                                textColor: Colors.black),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                                Text(
                                                  '14',
                                                  style: textStyleDefault(
                                                      textColor: Colors.black),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
}
