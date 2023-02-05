import 'package:flutter/material.dart';

TextStyle textStyleDefault({Color textColor = Colors.black}){
  return TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.bold);
}

TextStyle textStyleMinDesc(){
  return TextStyle(fontSize: 12 );
}

TextStyle textStyleMinDescBold(){
  return TextStyle(fontSize: 12 , fontWeight: FontWeight.bold);
}

TextStyle textStyleSubTitle({Color textColor = Colors.black}){
  return TextStyle(color: textColor, fontSize: 16 );
}

TextStyle textStyleBtn({Color textColor = Colors.black}){
  return TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle textStyleBtnMax({Color textColor = Colors.black}){
  return TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold);
}

TextStyle textStylePercent(){
  return TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
}

TextStyle textStyleLeader({Color textColor = Colors.black}){
  return TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor);
}