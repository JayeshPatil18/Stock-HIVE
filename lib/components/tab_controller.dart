import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import '../color_helper/defaultColor.dart';

class ProfileTabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
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
                            child:
                            Container(
                                width: 100,
                                height: 100,
                                child: Icon(Icons.person,
                                  size: 80,)),
                            backgroundColor: Colors.black12,
                            radius: 50,
                          ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 20),child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: starColor(),),
                                Icon(Icons.star, color: starColor(),),
                                Icon(Icons.star, color: starColor(),),
                                Icon(Icons.star, color: defaultBgColor(),),
                                Icon(Icons.star, color: defaultBgColor(),),
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 6),
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.topLeft,
                                        child: Text('Jayesh Patil', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25))),
                                    Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(top: 6),
                                        child: Text('@username', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16)))
                                  ],
                                )),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 2,
                        margin: EdgeInsets.only(left: 10, right: 5),
                        color: defaultBgColor(),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Text('Revenue', style: textStyleSubTitle(textColor: Colors.black),)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('1000', style: textStyleDefault(textColor: Colors.black),),
                                  Icon(Icons.currency_rupee, color: Colors.black,)
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
                        elevation: 2,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        color: defaultBgColor(),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Text('Points', style: textStyleSubTitle(textColor: Colors.black),)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('1000', style: textStyleDefault(textColor: Colors.black),),
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
                        elevation: 2,
                        margin: EdgeInsets.only(left: 5, right: 10),
                        color: defaultBgColor(),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Text('Rank', style: textStyleSubTitle(textColor: Colors.black),)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('#', style: textStyleDefault(textColor: Colors.black),),
                                  Text('1000', style: textStyleDefault(textColor: Colors.black),),
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

                Expanded(
                    child: Container(
                  color: defaultBgColor(),
                  margin: EdgeInsets.only(top: 20),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Predictions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text("Predictions")),
    );
  }
}

class Analytics extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text('Analytics')),
    );
  }
}