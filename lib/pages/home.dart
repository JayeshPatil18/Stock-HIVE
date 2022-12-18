import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(

          margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4,
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
                                        child: Text("Expires in 2 days", style: TextStyle(fontSize: 12 ))),
                                  ],
                                )),
                            Text("TCS stock will increase in next 10 days?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                              child: Text("Yes", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: OutlinedButton(onPressed: (){},
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                              ),
                                              child: Text("No", style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                  ],
                                )),



                          ],
                        ),
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4,
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
                                        child: Text("Expires in 2 days", style: TextStyle(fontSize: 12 ))),
                                  ],
                                )),
                            Text("TCS stock will increase in next 10 days?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                              child: Text("Yes", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: OutlinedButton(onPressed: (){},
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                              ),
                                              child: Text("No", style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                  ],
                                )),



                          ],
                        ),
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4,
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
                                        child: Text("Expires in 2 days", style: TextStyle(fontSize: 12 ))),
                                  ],
                                )),
                            Text("TCS stock will increase in next 10 days?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                              child: Text("Yes", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: OutlinedButton(onPressed: (){},
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                              ),
                                              child: Text("No", style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                  ],
                                )),



                          ],
                        ),
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4,
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
                                        child: Text("Expires in 2 days", style: TextStyle(fontSize: 12 ))),
                                  ],
                                )),
                            Text("TCS stock will increase in next 10 days?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                              child: Text("Yes", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: OutlinedButton(onPressed: (){},
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                              ),
                                              child: Text("No", style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                  ],
                                )),



                          ],
                        ),
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4,
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
                                        child: Text("Expires in 2 days", style: TextStyle(fontSize: 12 ))),
                                  ],
                                )),
                            Text("TCS stock will increase in next 10 days?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                              child: Text("Yes", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)))),
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: OutlinedButton(onPressed: (){},
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                              ),
                                              child: Text("No", style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold)))),
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
    );
  }
}
