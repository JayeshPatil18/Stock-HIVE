import 'package:flutter/material.dart';
import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';

class ReelsPage extends StatelessWidget {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(bottom: 60),
        child: Container(
          color: defaultBgColor(),
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: controller,
            children: queReels,
          ),
        ),
      ),
    );
  }


  List<Widget> queReels = [
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/imgs/stock_graph_short.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
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
                                    child: Text("Expires in 2 days",
                                        style: textStyleMinDesc())),
                              ],
                            )),
                        Text(
                            "TCS stock will increase in next 10 days?",
                            style: textStyleDefault()),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(right: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("Yes",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.blue)))),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 60,
                                      margin:
                                      EdgeInsets.only(left: 10),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0))),
                                          ),
                                          child: Text("No",
                                              style: textStyleBtnMax(
                                                  textColor:
                                                  Colors.red)))),
                                ),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("YES: ",
                                                style: textStylePercent()),
                                            Text("91",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),

                                Expanded(
                                  child: Container(
                                    height: 40,
                                  ),
                                ),

                                Container(
                                    height: 40,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text("NO: ",
                                                style: textStylePercent()),
                                            Text("9",
                                                style: textStylePercent()),
                                          ],
                                        ),
                                        Icon(Icons.percent)
                                      ],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ),
  ];
}