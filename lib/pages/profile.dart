import 'package:flutter/material.dart';
import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 60),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
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
                          Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Text('@username', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16)))
                        ],
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
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text('Points: 40', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 14),)),
                                      ],
                                    )),
                              ],
                            )),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2,
                    color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                    Tab(text: "Predictions",),
                    Tab(text: "Analytics",),
                  ]),
                ),

                Expanded(child: Container(
                  color: defaultBgColor(),
                  margin: EdgeInsets.only(top: 20),
                  child: TabBarView(
                    children: [
                      Predictions(),
                      Analytics(),
                    ],
                  ),
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