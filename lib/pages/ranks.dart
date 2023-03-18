import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stock_prediction/pages/view_profile.dart';
import '../color_helper/defaultColor.dart';
import '../data_models/UserModel.dart';
import '../font_helper/default_fonts.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

class RanksPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RanksPageState();
  }
}

class RanksPageState extends State<RanksPage> {
  List<UserModel> usersList = [];

  @override
  void initState() {
  }

  static void scrollToIndex(int index) => itemController.scrollTo(
        index: index,
        duration: Duration(milliseconds: 600),
      );

  static final itemController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return Center(child: Text('Loading...'),);
          }else{
            return ScrollablePositionedList.builder(
                padding: EdgeInsets.all(4),
                itemScrollController: itemController,
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  var user = usersList[index];
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
                        leading: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage('assets/icons/crown_simple.png'),
                                  color: starColor(),
                                  size: 30,
                                ),
                                Text('#${index + 1}', style: textStyleLeader()),
                              ],
                            )),
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 80,
                              height: 80,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                radius: 40,
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    user.uFullname.toString(),
                                    style: textStyleLeader(),
                                  ),
                                  Text(
                                    user.username.toString(),
                                    style: textStyleMinDesc(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Pts.', style: textStyleMinDesc()),
                            Text(user.uPoints.toString(),
                                style: textStyleLeader()),
                          ],
                        ),
                        contentPadding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ViewProfile()));
                        },
                        onLongPress: () {},
                      ),
                    ),
                  );
                });
          }
        },
      ),
    );
  }

  Future<List<UserModel>> getUsers() async {
    final response =
        await http.get(Uri.parse('$globalApiUrl/users/list'));
    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (Map i in data) {
        usersList.add(UserModel.fromJson(i));
      }
      return usersList;
    } else {
      return usersList;
    }
  }
}
