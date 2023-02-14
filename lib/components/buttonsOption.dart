import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';

class OptionButtonsFour extends StatefulWidget {

  final String label1;
  final String label2;
  final String label3;
  final String label4;

  OptionButtonsFour({
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4
  });

  @override
  _OptionButtonsFourState createState() => _OptionButtonsFourState();
}

class _OptionButtonsFourState extends State<OptionButtonsFour> {
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
              child: Text("Pharma", style: textStyleBtn(textColor: _isSelectedFirst ? Colors.white : Colors.black)),
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
              child: Text("Bank", style: textStyleBtn(textColor: _isSelectedSecond ? Colors.white : Colors.black)),
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
              child: Text("IT", style: textStyleBtn(textColor: _isSelectedThird ? Colors.white : Colors.black)),
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
              child: Text("Media", style: textStyleBtn(textColor: _isSelectedFour ? Colors.white : Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}