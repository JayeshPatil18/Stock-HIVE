import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stock_prediction/pages/ranks.dart';
import 'package:stock_prediction/pages/view_profile.dart';
import '../color_helper/defaultColor.dart';
import '../components/contestCard.dart';
import '../components/tab_controller.dart';
import '../dialgo_boxs/conSelectStocks.dart';
import '../font_helper/default_fonts.dart';
import 'my_games.dart';

class ContestOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Contest'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(160.0),
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 4),
                          child: Text("@JayeshPatil18",
                              style: textStyleMinDesc())),
                      Container(
                        child: Row(
                          children: [
                            Row(
                            children: [
                              Text("Starting In: ", style: textStyleMinDesc()),
                              Text("12H:45M:11S", style: textStyleMinDescBold())
                            ],
                          ),

                            Container(
                              margin: EdgeInsets.only(left: 4, right: 8),
                              child: Text("|", style: textStyleMinDesc()),
                            ),
                            Row(
                              children: [
                                Text("Price: ", style: textStyleMinDesc()),
                                Text("10,100", style: textStyleMinDescBold()),
                                Icon(Icons.currency_rupee, size: 14)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                    )
                ),
                new Divider(thickness: 2, color: defaultBgColor()),
                Container(
                    margin: EdgeInsets.only(top: 8, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Starts: 1 feb | 10:00 am", style: textStyleMinDesc()),
                        Text("Ends: 2 feb | 10:00 am", style: textStyleMinDesc())
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
      body: ContestTabs()
    );
  }
}

class ContestTabs extends StatelessWidget{
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
                  margin: EdgeInsets.only(left: 10, right: 10),
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
                        Tab(text: "Stock List",),
                        Tab(text: "Leaderboard",),
                      ]),
                ),

                Expanded(child: Container(
                  color: defaultBgColor(),
                  margin: EdgeInsets.only(top: 10),
                  child: TabBarView(
                    children: [
                      StockList(),
                      ContestRank(),
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

class StockList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(4),
          child: Column(
            children: [
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                              radius: 25,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reliance stock',
                                  style: textStyleLeader(),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                                color: Colors.green,
                              ),
                              Text('10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ContestRank extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContestRankState();
  }
}

class ContestRankState extends State<ContestRank>{

  static void scrollToIndex(int index) => itemController.scrollTo(
    index: index,
    duration: Duration(milliseconds: 600),
  );

  static final itemController = ItemScrollController();

  var arrNames = [
    'Raman',
    'Ramanauan',
    'Rajesh',
    "James",
    "Hoan",
    "Rahim" 'Ramanauan',
    'Rajesh',
    "James",
    "Hoan",
    "Rahim" 'Ramanauan',
    'Rajesh',
    "James",
    "Hoan",
    "Rahim",
    "Hoan",
    "Rahim",
    'Ramanauan',
    'Rajesh',
    "James",
    "Hoan",
    "Rahim",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          scrollToIndex(11);
        },
        label:  Row(
          children: [
            Text('My Rank ', style: textStyleSubTitle(textColor: Colors.white)),
            Icon(Icons.leaderboard_outlined, size: 18, color: Colors.white,)
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: ScrollablePositionedList.builder(
            padding: EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 75),
            itemScrollController: itemController,
            itemCount: arrNames.length,
            itemBuilder: (context, index){
              return Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: defaultBgColor(),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0.0,
                  child: ListTile(
                    leading:Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(AssetImage('assets/icons/crown_simple.png'), color: starColor(), size: 30,),
                            Text('#${index+1}', style: textStyleLeader()),
                          ],
                        )
                    ),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                            radius: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(arrNames[index], style: textStyleLeader(),),
                            Text('@${arrNames[index]}', style: textStyleMinDesc(),),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Pts.', style: textStyleMinDesc()),
                        Text('324', style: textStyleLeader()),
                      ],
                    ),
                    contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ViewProfile())
                      );
                    },
                    onLongPress: (){},
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
