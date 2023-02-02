import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';

import '../font_helper/default_fonts.dart';

class HomePage extends StatelessWidget {
  var elevationValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(

          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: elevationValue,
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
                                          child: Text("Expires in 2 days", style: textStyleMinDesc())),
                                    ],
                                  )),
                              Text("TCS stock will increase in next 10 days?", style: textStyleDefault()),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("Yes", style: textStyleBtn(textColor: Colors.blue)))),
                                      ),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: OutlinedButton(onPressed: (){},
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                                ),
                                                child: Text("No", style: textStyleBtn(textColor: Colors.red)))),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
