import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stock_prediction/pages/view_profile.dart';
import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';
import 'package:http/http.dart' as http;

class RanksPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RanksPageState();
  }

}

class RanksPageState extends State<RanksPage>{

  List<dynamic> users = [];

  @override
  void initState() {
    fetchUsers();
  }

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
      body: Container(
                  child: ScrollablePositionedList.builder(
                    padding: EdgeInsets.all(4),
                    itemScrollController: itemController,
                      itemCount: users.length,
                      itemBuilder: (context, index){
                      var user = users[index];
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
                                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                                      radius: 40,
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('${user['name']['first'].toString()}', style: textStyleLeader(),),
                                        Text('${user['email'].toString()}', style: textStyleMinDesc(),),
                                      ],
                                    ),
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

  void fetchUsers() async{
    var url = "https://randomuser.me/api/?results=2";
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    var body = response.body;
    var json = jsonDecode(body);

    setState(() {
      users = json['results'];
    });
  }
}