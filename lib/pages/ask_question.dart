import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../font_helper/default_fonts.dart';

class AskQuestion extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AskQuestionState();
  }
}

class AskQuestionState extends State<AskQuestion>{
  String _buttonText = 'Ask Question';
  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 70),
                    child: Text('Ask Your Question', style: textBig())),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Question',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          setState(() {
                            _buttonText = 'Submitted!';
                          });
                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.pop(context);
                          });
                        },
                        child: Text(_buttonText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}