import 'package:flutter/material.dart';

import '../font_helper/default_fonts.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child:
                          Container(
                              width: 100,
                              height: 100,
                              child: Icon(Icons.person,
                              size: 80,)),
                          backgroundColor: Colors.grey,
                          radius: 50,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text('@username', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16)))
                      ],
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 20),child: Column(
                            children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                ),
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('Jayesh Patil', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25))),
                                      Container(
                                        alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(top: 6),
                                          child: Text('Points: 40', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 14),)),
                                    ],
                                  )),
                            ],
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}