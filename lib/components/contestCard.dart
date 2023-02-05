import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';

class ContestCard extends StatelessWidget {
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

class SortCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SortCardState();
  }
}

class SortCardState extends State<SortCard> {
  bool isAlphabetically = false;
  bool isPopularity = true;
  bool isGainer = false;
  bool isLoser = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Alphabetically',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 16)),
                Checkbox(
                  checkColor: Colors.white,
                  value: isAlphabetically,
                  activeColor: Colors.black,
                  onChanged: (bool? value) {
                    setState(() {
                      isAlphabetically = value!;
                    });
                  },
                )
              ],
            ),
          ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 1,
              color: defaultBgColor(),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popularity',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 16)),
                  Checkbox(
                    checkColor: Colors.white,
                    value: isPopularity,
                    activeColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isPopularity = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 1,
              color: defaultBgColor(),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Gainer',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 16)),
                  Checkbox(
                    checkColor: Colors.white,
                    value: isGainer,
                    activeColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isGainer = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 1,
              color: defaultBgColor(),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Loser',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 16)),
                  Checkbox(
                    checkColor: Colors.white,
                    value: isLoser,
                    activeColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isLoser = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: OutlinedButton(
                onPressed: (){
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
