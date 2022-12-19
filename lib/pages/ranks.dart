import 'package:flutter/material.dart';

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
      backgroundColor: Colors.transparent,
      body: Center(
          child: Container(
            child: ListView.separated(itemBuilder: (context, index){
              return ListTile(
                leading: Text('${index + 1}'),
                title: Text('${arrNames[index]}'),
                trailing: Icon(Icons.person),
              );
            },
            itemCount: arrNames.length, separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 1,
              );
              },
            ),
          ),
      ),
    );
  }

}