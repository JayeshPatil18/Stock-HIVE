import 'package:flutter/material.dart';
import 'package:stock_prediction/pages/view_profile.dart';

import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';

class RanksPage extends StatelessWidget{
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
      backgroundColor: Colors.white,
      body: Container(
        child: ListView.builder(
                itemCount: arrNames.length,
                  itemBuilder: (context, index){
                    return Card(
                      elevation: 0.2,
                      child: ListTile(
                        leading:Container(
                            child: Text('#${index+1}', style: textStyleLeader())
                        ),
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 60,
                                height: 60,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                                  radius: 30,
                                ),
                            ),
                            Text(arrNames[index], style: textStyleLeader(),),
                          ],
                        ),
                        trailing: Column(
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
                    );
                  }
              ),
      ),
    );
  }
}