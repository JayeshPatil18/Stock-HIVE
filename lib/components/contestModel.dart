import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';

class ContestModel extends StatelessWidget {
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
                  Icon(Icons.watch_later_outlined, size: 16),
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text("Join within 1 hour",
                          style: textStyleMinDesc())),
                ],
              )),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageIcon(
                  AssetImage('assets/imgs/contest_logo.png'),
                  size: 60,
                ),
                Text("12:45:11", style: textStyleMinDesc()),
                // For Closing time of contest
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Win',
                            style: textStylePercent(),
                          ),
                          Icon(
                            Icons.emoji_events,
                            color: starColor(),
                          ),
                          Text(
                            '10,000',
                            style: textStylePercent(),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'Join ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                color: starColor(),
                              ),
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
          new Divider(thickness: 2, color: defaultBgColor()),
          Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Starts: 1 feb | 10:00 am", style: textStyleMinDesc()),
                  Text("Ends: 2 feb | 10:00 am", style: textStyleMinDesc())
                ],
              ))
        ],
      ),
    );
  }
}

class ContestCardSecondary extends StatelessWidget {
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
                  Icon(Icons.watch_later_outlined, size: 16),
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text("Join within 1 hour",
                          style: textStyleMinDesc())),
                ],
              )),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageIcon(
                  AssetImage('assets/imgs/contest_logo.png'),
                  size: 60,
                ),
                Text("12:45:11", style: textStyleMinDesc()),
                // For Closing time of contest
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Win',
                            style: textStylePercent(),
                          ),
                          Icon(
                            Icons.emoji_events,
                            color: starColor(),
                          ),
                          Text(
                            '10,000',
                            style: textStylePercent(),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(14)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          new Divider(thickness: 2, color: defaultBgColor()),
          Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Starts: 1 feb | 10:00 am", style: textStyleMinDesc()),
                  Text("Ends: 2 feb | 10:00 am", style: textStyleMinDesc())
                ],
              )),
          new Divider(thickness: 2, color: defaultBgColor()),
          Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("Starting In: ", style: textStyleMinDesc()),
                        Text("12H:45M:11S", style: textStyleMinDescBold())
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("Price: ", style: textStyleMinDesc()),
                        Text("10,100", style: textStyleMinDescBold()),
                        Icon(Icons.currency_rupee, size: 14)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("Entry fee: ", style: textStyleMinDesc()),
                        Text("10", style: textStyleMinDescBold()),
                        Icon(Icons.currency_rupee, size: 14)
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class SortCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SortCardState();
  }
}

class SortCardState extends State<SortCard> {
  int _selectedValue = 1;
  int _closeDelay = 400;

  void _updateSelectedValue(int value) {
    setState(() {
      _selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
          padding: EdgeInsets.only(left: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Popularity"),
              Radio(
                value: 1,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _updateSelectedValue(value!);
                    Timer(Duration(milliseconds: _closeDelay), () {
                      Navigator.pop(context);
                    });
                  });
                },
              ),
            ],
          ),
        ),
          Container(
            color: defaultBgColor(),
            height: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Alphabetically"),
                Radio(
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _updateSelectedValue(value!);
                      Timer(Duration(milliseconds: _closeDelay), () {
                        Navigator.pop(context);
                      });
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            color: defaultBgColor(),
            height: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Top Gainer"),
                Radio(
                  value: 3,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _updateSelectedValue(value!);
                      Timer(Duration(milliseconds: _closeDelay), () {
                        Navigator.pop(context);
                      });
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            color: defaultBgColor(),
            height: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Top Loser"),
                Radio(
                  value: 4,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _updateSelectedValue(value!);
                      Timer(Duration(milliseconds: _closeDelay), () {
                        Navigator.pop(context);
                      });
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            color: defaultBgColor(),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: OutlinedButton(
              onPressed: (){
                _updateSelectedValue(1);
                Timer(Duration(milliseconds: _closeDelay), () {
                  Navigator.pop(context);
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Reset', style: textStyleBtn()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
