import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';

import '../dialgo_boxs/predictDialogBox.dart';
import 'buttonsOption.dart';


// Two Options Buttons
class DialogOptionButtonsTwo extends StatefulWidget {

  final int selectedIndex;

  final String label1;
  final String label2;

  DialogOptionButtonsTwo({
    required this.selectedIndex,

    required this.label1,
    required this.label2,
  });

  @override
  State<StatefulWidget> createState() {

    BtnValues.label1 = label1;
    BtnValues.label2 = label2;

    return _DialogOptionButtonsTwoState(selectedIndex);
  }
}

class _DialogOptionButtonsTwoState extends State<DialogOptionButtonsTwo> {

  int selectedIndex = -1;

  _DialogOptionButtonsTwoState(int selectedIndex) {
    this.selectedIndex = selectedIndex;
  }

  bool _isSelectedFirst = false;
  bool _isSelectedSecond = false;

  @override
  void initState() {
    setState(() {
      switch(selectedIndex){
        case 0:
          _isSelectedFirst = true;
          break;

        case 1:
          _isSelectedSecond = true;
          break;
      }
    });
  }

  void _toggleSelectionFirst() {
    setState(() {
      if(_isSelectedFirst){
        _isSelectedFirst = false;
      }else{
        _isSelectedFirst = true;
        _isSelectedSecond = false;
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
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionFirst();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(_isSelectedFirst ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel1(), style: textStyleBtn(textColor: _isSelectedFirst ? Colors.white : Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionSecond();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(_isSelectedSecond ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel2(), style: textStyleBtn(textColor: _isSelectedSecond ? Colors.white : Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}


// Third Options Buttons
class DialogOptionButtonsThird extends StatefulWidget {

  final int selectedIndex;

  final String label1;
  final String label2;
  final String label3;

  DialogOptionButtonsThird({
    required this.selectedIndex,
    required this.label1,
    required this.label2,
    required this.label3,
  });

  @override
  State<StatefulWidget> createState() {

    BtnValues.label1 = label1;
    BtnValues.label2 = label2;
    BtnValues.label3 = label3;

    return _DialogOptionButtonsThirdState(selectedIndex);
  }
}

class _DialogOptionButtonsThirdState extends State<DialogOptionButtonsThird> {

  int selectedIndex = -1;

  _DialogOptionButtonsThirdState(int selectedIndex) {
    this.selectedIndex = selectedIndex;
  }

  bool _isSelectedFirst = false;
  bool _isSelectedSecond = false;
  bool _isSelectedThird = false;

  void _toggleSelectionFirst() {
    setState(() {
      if (_isSelectedFirst) {
        _isSelectedFirst = false;
      } else {
        _isSelectedFirst = true;
        _isSelectedSecond = false;
        _isSelectedThird = false;
      }
    });
  }

  void _toggleSelectionSecond() {
    setState(() {
      if (_isSelectedSecond) {
        _isSelectedSecond = false;
      } else {
        _isSelectedFirst = false;
        _isSelectedSecond = true;
        _isSelectedThird = false;
      }
    });
  }

  void _toggleSelectionThird() {
    setState(() {
      if (_isSelectedThird) {
        _isSelectedThird = false;
      } else {
        _isSelectedFirst = false;
        _isSelectedSecond = false;
        _isSelectedThird = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionFirst();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(
                    _isSelectedFirst ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel1(), style: textStyleBtn(
                  textColor: _isSelectedFirst ? Colors.white : Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionSecond();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(
                    _isSelectedSecond ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel2(), style: textStyleBtn(
                  textColor: _isSelectedSecond ? Colors.white : Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionThird();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(
                    _isSelectedThird ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel3(), style: textStyleBtn(
                  textColor: _isSelectedThird ? Colors.white : Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}


// Four Options Buttons
class DialogOptionButtonsFour extends StatefulWidget {

  final int selectedIndex;

  final String label1;
  final String label2;
  final String label3;
  final String label4;

  DialogOptionButtonsFour({
    required this.selectedIndex,

    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4
  });

  @override
  State<StatefulWidget> createState() {

    BtnValues.label1 = label1;
    BtnValues.label2 = label2;
    BtnValues.label3 = label3;
    BtnValues.label4 = label4;

    return _DialogOptionButtonsFourState(selectedIndex);
  }
}

class _DialogOptionButtonsFourState extends State<DialogOptionButtonsFour> {

  int selectedIndex = -1;

  _DialogOptionButtonsFourState(int selectedIndex) {
    this.selectedIndex = selectedIndex;
  }

  bool _isSelectedFirst = false;
  bool _isSelectedSecond = false;
  bool _isSelectedThird = false;
  bool _isSelectedFour = false;

  @override
  void initState() {
    setState(() {
      switch(selectedIndex){
        case 0:
          _isSelectedFirst = true;
          break;

        case 1:
          _isSelectedSecond = true;
          break;

        case 2:
          _isSelectedThird = true;
          break;

        case 3:
          _isSelectedFour = true;
      }
    });
  }

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
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionFirst();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(_isSelectedFirst ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel1(), style: textStyleBtn(textColor: _isSelectedFirst ? Colors.white : Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionSecond();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(_isSelectedSecond ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel2(), style: textStyleBtn(textColor: _isSelectedSecond ? Colors.white : Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionThird();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(_isSelectedThird ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel3(), style: textStyleBtn(textColor: _isSelectedThird ? Colors.white : Colors.black)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                _toggleSelectionFour();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
                backgroundColor: MaterialStateProperty.all<Color>(_isSelectedFour ? Colors.black : Colors.white),
              ),
              child: Text(BtnValues.getLabel4(), style: textStyleBtn(textColor: _isSelectedFour ? Colors.white : Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}

class BtnValues{
  static String label1 = "";
  static String label2 = "";
  static String label3 = "";
  static String label4 = "";

  static String getLabel1(){
    return  label1;
  }

  static String getLabel2(){
    return  label2;
  }

  static String getLabel3(){
    return  label3;
  }

  static String getLabel4(){
    return  label4;
  }
}