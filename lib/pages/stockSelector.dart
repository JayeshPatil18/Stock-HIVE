import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_helper/defaultColor.dart';
import '../components/contestModel.dart';
import '../dialgo_boxs/conSelectStocks.dart';
import '../font_helper/default_fonts.dart';
import '../main.dart';

class StockSelector extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: appBarElevation,
          backgroundColor: Colors.white,
          title: Text('Contest'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200.0),
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
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
            ),
          ),
        ),
        body: ContestStocks(),
      );
  }
}