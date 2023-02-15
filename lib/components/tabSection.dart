import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import '../color_helper/defaultColor.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import 'discussModel.dart';

class TabSection1 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return TabSection1State();
  }
}

class TabSection1State extends State<TabSection1>{

  static int currentIndex = 0;

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
                  currentIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(14)
                ),
                margin: EdgeInsets.only(right: 10),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(items[index], style: TextStyle(color: currentIndex == index ? Colors.white : Colors.black),),
                )),
              ),
            );
          }
      ),
    );
  }
}

class TabSection2 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return TabSection2State();
  }
}

class TabSection2State extends State<TabSection2>{

  static int currentIndex = 0;

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
                  currentIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(14)
                ),
                margin: EdgeInsets.only(right: 10),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(items[index], style: TextStyle(color: currentIndex == index ? Colors.white : Colors.black),),
                )),
              ),
            );
          }
      ),
    );
  }
}