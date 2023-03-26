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

TextStyle textBig({Color textColor = Colors.black}){
  return TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textColor);
}

TextStyle textBigSubtitle({Color textColor = Colors.black}){
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textColor);
}

TextStyle textTweet({Color textColor = Colors.black}){
  return TextStyle(fontSize: 18, color: textColor);
}

TextStyle textTweetName({Color textColor = Colors.black}){
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor);
}

TextStyle textTweetUsername({Color textColor = Colors.black}){
  return TextStyle(fontSize: 16, color: textColor);
}

TextStyle textTweetDate({Color textColor = Colors.black}){
  return TextStyle(fontSize: 13, color: textColor);
}

TextStyle textTweetReplying({Color textColor = Colors.grey}){
  return TextStyle(fontSize: 16, color: textColor);
}