import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          height: 200,
          width: double.infinity,
          child: Card(
            elevation: 20,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: ElevatedButton(onPressed: (){}, child: Text("Start")),
            ),

          ),
        ),
      ),
    );
  }

}