import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import '../components/queModel.dart';
import '../font_helper/default_fonts.dart';


class AskQueDialogBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AskQueDialogBoxState();
  }
}

class AskQueDialogBoxState extends State<AskQueDialogBox> {
  String _buttonText = 'Ask Question';
  var boarderWidth = 1.4;

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
              margin: EdgeInsets.only(top: 20,bottom: 60),
              child: Text('Ask Your Question', style: textBigSubtitle())),
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
            height: 60,
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
    );
  }
}
