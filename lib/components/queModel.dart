import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../font_helper/default_fonts.dart';
import 'buttonsOption.dart';

class QuestionModel extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionModelState();
  }

}

class QuestionModelState extends State<QuestionModel>{
  var elevationValue = 0.0;

  bool _isSelectedFirst = false;
  bool _isSelectedSecond = false;
  bool _isSelectedThird = false;
  bool _isSelectedFour = false;

  void _toggleSelectionFirst() {
    setState(() {
      if(_isSelectedFirst){
        _isSelectedFirst = false;
      }else{
        _isSelectedFirst = true;
        _isSelectedSecond = false;
        _isSelectedThird = false;
        _isSelectedFour = false;
      }
    });
  }

  void _toggleSelectionSecond() {
    setState(() {
      if(_isSelectedSecond){
        _isSelectedSecond = false;
      }else{
        _isSelectedFirst = false;
        _isSelectedSecond = true;
        _isSelectedThird = false;
        _isSelectedFour = false;
      }
    });
  }

  void _toggleSelectionThird() {
    setState(() {
      if(_isSelectedThird){
        _isSelectedThird = false;
      }else{
        _isSelectedFirst = false;
        _isSelectedSecond = false;
        _isSelectedThird = true;
        _isSelectedFour = false;
      }
    });
  }

  void _toggleSelectionFour() {
    setState(() {
      if(_isSelectedFour){
        _isSelectedFour = false;
      }else{
        _isSelectedFirst = false;
        _isSelectedSecond = false;
        _isSelectedThird = false;
        _isSelectedFour = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    // CircleAvatar(
                    //   backgroundImage: NetworkImage(
                    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s"),
                    //   radius: 10,
                    // ),
                    Flexible(
                      child: Container(
                        // margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Which sector will perform best on Tuesday?',
                            style: textStyleDefault(),
                          )),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 6, bottom: 6),
                  height: 1,
                  // color: defaultBgColor(),
                ),
                OptionButtonsFour(label1: 'Pharma', label2: 'Bank', label3: 'IT', label4: 'Media',)
              ],
            ),
          );
  }
}