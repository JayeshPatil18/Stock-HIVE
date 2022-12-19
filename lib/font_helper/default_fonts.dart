import 'package:flutter/material.dart';

TextStyle textStyleDefault(){
  return TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
}

TextStyle textStyleMinDesc(){
  return TextStyle(fontSize: 12 );
}

TextStyle textStyleBtn({Color textColor = Colors.black}){
  return TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle textStyleBtnMax({Color textColor = Colors.black}){
  return TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold);
}