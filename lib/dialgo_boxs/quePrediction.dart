import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import '../components/queCard.dart';
import '../font_helper/default_fonts.dart';

class QueDialogBox extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          child: Container(
            width: 60,
            height: 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: defaultBgColor()
            ),
          ),
        ),
        QuestionCard(),
      ]
    );
  }

}