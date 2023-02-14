import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import '../components/queModel.dart';
import '../font_helper/default_fonts.dart';

class DiscussDialogBox extends StatelessWidget {
  var elevationValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 6,
          child: Container(
            height: 6,
            width: 60,
            decoration: BoxDecoration(
                color: defaultBgColor(),
                borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.date_range,
                              size: 16),
                          Container(
                              margin: EdgeInsets.only(left: 4),
                              child: Text("03/05/2022", style: textStyleMinDesc())),
                        ],
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                        radius: 10,
                      ),
                      Flexible(
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Could I invest in TCS right now yes right now?',
                              style: textStyleDefault(),
                            )),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 1,
                    color: defaultBgColor(),
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Replies: ',
                              style: textStyleBtn()),
                          Text('12', style: textStyleBtn()),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.reply, color: Colors.black, size: 22,),
                          Text('Reply', style: textStyleBtn()),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: defaultBgColor(),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                radius: 10,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Add Your Reply...',
                                      style: textStyleBtn())),
                            ],
                          ),
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

}

class DiscussDialogBoxSecondary extends StatelessWidget {
  var elevationValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 6,
          child: Container(
            height: 6,
            width: 60,
            decoration: BoxDecoration(
                color: defaultBgColor(),
                borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.date_range,
                              size: 16),
                          Container(
                              margin: EdgeInsets.only(left: 4),
                              child: Text("03/05/2022", style: textStyleMinDesc())),
                        ],
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                        radius: 10,
                      ),
                      Flexible(
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Could I invest in TCS right now yes right now?',
                              style: textStyleDefault(),
                            )),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 1,
                    color: defaultBgColor(),
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Replies: ',
                              style: textStyleBtn()),
                          Text('12', style: textStyleBtn()),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.reply, color: Colors.black, size: 22,),
                          Text('Reply', style: textStyleBtn()),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: defaultBgColor(),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                radius: 10,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Add Your Reply...',
                                      style: textStyleBtn())),
                            ],
                          ),
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Your Reply',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                  radius: 10,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text('Jayesh Patil',
                                        style: textStyleBtn())),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border, size: 20,),
                                Text('10', style: textStyleSubTitle()),
                              ],
                            ),
                          ],
                        ),
                        Text(
                            'Making investment decisions requires a thorough analysis of various factors.',
                            style: textStyleSubTitle())
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

}