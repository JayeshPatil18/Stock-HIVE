import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';

class ContestCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.watch_later_outlined,
                      size: 16),
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text("Closing in 1 hour", style: textStyleMinDesc())),
                ],
              )),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageIcon(AssetImage('assets/imgs/contest_logo.png'), size: 60,),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.emoji_events, color: starColor(),),
                          Text('10,000', style: textStylePercent(),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                          child: Row(
                            children: [
                              Text('Join ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                              Text('10', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                              Icon(Icons.currency_rupee, color: starColor(),),
                            ],
                          ),
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          new Divider(
            thickness: 2,
            color: defaultBgColor()
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Starts: 1 feb | 10:00 am", style: textStyleMinDesc()),
                Text("Ends: 2 feb | 10:00 am", style: textStyleMinDesc())
              ],
            )
          )
        ],
      ),
    );
  }

}