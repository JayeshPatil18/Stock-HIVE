import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import '../components/queModel.dart';
import '../font_helper/default_fonts.dart';
import '../main.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class AskQueDialogBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AskQueDialogBoxState();
  }
}

class AskQueDialogBoxState extends State<AskQueDialogBox> {
  String _buttonText = postLabelName;
  var boarderWidth = 1.4;

  final tweetController = TextEditingController();

  bool isClicked = false;

  var _myFormKey = GlobalKey<FormState>();

  _setButtonText(String btnText) {
    setState(() {
      _buttonText = btnText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 60,
            height: 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: defaultBgColor()),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 60),
              child: Text('Ask Your Question', style: textBigSubtitle())),
          Form(
            key: _myFormKey,
            child: TextFormField(
              controller: tweetController,
              validator: (String? msg) {
                msg = msg?.trim();
                if (msg!.isEmpty) {
                  return "Please ${postLabelName}";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: postLabelName,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          BorderSide(color: Colors.black, width: boarderWidth)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(
                          color: Colors.black, width: boarderWidth))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  onPressed: () async {
                    if (!isClicked) {
                      isClicked = true;

                      bool isValid = _myFormKey.currentState!.validate();

                      if (isValid) {
                        _setButtonText("Loading...");

                        bool isDone = await askQuestion();

                        if (isDone) {
                          _setButtonText("Submitted!");
                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.pop(context);
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Something Went Wrong.')));
                          _setButtonText(postLabelName);
                        }
                      }

                      isClicked = false;
                    }
                  },
                  child: Text(
                    _buttonText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ))),
        ],
      ),
    );
  }

  Future<bool> askQuestion() async {
    String tweet = tweetController.text;
    DateTime currentTime = DateTime.now();
    String currentTimeStr =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(currentTime);

    try {
      final url = Uri.parse('$globalApiUrl/tweets/add');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'tweet': tweet,
        'username': logusername,
        'datetime': currentTimeStr,
        'parent': -1
      });
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
