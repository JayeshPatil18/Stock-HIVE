import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/pages/search.dart';

import '../color_helper/defaultColor.dart';

class MyGamePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
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
                        Tab(text: "Predict",),
                        Tab(text: "Contest",),
                      ]),
                ),

                Expanded(child: Container(
                  color: defaultBgColor(),
                  margin: EdgeInsets.only(top: 10),
                  child: TabBarView(
                    children: [
                      SearchQue(),
                      SearchUsers(),
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

class SearchQue extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text("History of Questions")),
    );
  }
}

class SearchUsers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text('History of Users')),
    );
  }
}