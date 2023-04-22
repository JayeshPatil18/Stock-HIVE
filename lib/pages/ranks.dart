import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stock_prediction/pages/view_profile.dart';
import 'package:stock_prediction/utils/token_helper.dart';
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
  String username = "";

  _setScrollIndex(int index) {
    scrollIndex = index;
  }

  _getTokenUsername() async{
    username = await getTokenUsername();
  }

  @override
  void initState() {
    _getTokenUsername();
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
            return const Center(child: CircularProgressIndicator());
          }else{
            return ScrollablePositionedList.builder(
                padding: EdgeInsets.all(4),
                itemScrollController: itemController,
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  var user = usersList[index];
                  if (user.username.toString() == username){
                    _setScrollIndex(index);
                  }
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
                              child: user.uProfileurl.toString() != "img_url"
                                  ? CircleAvatar(
                                backgroundImage: NetworkImage(user.uProfileurl.toString()),
                                radius: 40,
                              )
                                  : const CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/icons/default_avatar.jpg"),
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
    usersList.clear();
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
