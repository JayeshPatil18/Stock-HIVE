import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../font_helper/default_fonts.dart';
import 'btnOptionsDialogBox.dart';
import 'buttonsOption.dart';

class QuestionModel extends StatefulWidget{

  final selectedIndex;
  final isDialogBox;

  QuestionModel({
    required this.selectedIndex,
    required this.isDialogBox
  });

  @override
  State<StatefulWidget> createState() {
    return QuestionModelState(selectedIndex, isDialogBox);
  }
}

class QuestionModelState extends State<QuestionModel>{
  var elevationValue = 0.0;
  int selectedIndex = -1;
  bool isDialogBox = false;

  QuestionModelState(int selectedIndex, bool isDialogBox) {
    this.selectedIndex = selectedIndex;
    this.isDialogBox = isDialogBox;
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
                isDialogBox == true ? DialogOptionButtonsFour(label1: 'Pharma', label2: 'Bank', label3: 'IT', label4: 'Media', selectedIndex: selectedIndex) : OptionButtonsFour(label1: 'Pharma', label2: 'Bank', label3: 'IT', label4: 'Media')
              ],
            ),
          );
  }
}