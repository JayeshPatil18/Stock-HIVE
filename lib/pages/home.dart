import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';

import '../components/queCard.dart';
import '../dialgo_boxs/quePrediction.dart';
import '../font_helper/default_fonts.dart';

class HomePage extends StatelessWidget {

  void showDialogQue(BuildContext context){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10)
          )
        ),
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.80,
          maxChildSize: 1.0,
          minChildSize: 0.60,
          builder: (context, scrollContoller) => SingleChildScrollView(
            child: QueDialogBox(),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(

          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      showDialogQue(context);
                    },
                    child: QuestionCard(),
                  ),
                  InkWell(
                    onTap: (){
                      showDialogQue(context);
                    },
                    child: QuestionCard(),
                  ),
                  InkWell(
                    onTap: (){
                      showDialogQue(context);
                    },
                    child: QuestionCard(),
                  ),
                  InkWell(
                    onTap: (){
                      showDialogQue(context);
                    },
                    child: QuestionCard(),
                  ),
                  InkWell(
                    onTap: (){
                      showDialogQue(context);
                    },
                    child: QuestionCard(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
