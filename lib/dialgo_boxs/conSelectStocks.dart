import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import '../components/contestCard.dart';
import '../components/queCard.dart';
import '../font_helper/default_fonts.dart';

class ContestStocks extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 60,
            height: 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: defaultBgColor()
            ),
          ),
          ContestCardSecondary(),
          Container(
              height: 60,
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              color: defaultBgColor(),
              child: StackWidget()
          ),
          Container(
            color: defaultBgColor(),
          )
        ],
      ),
    );
  }
}

class StackWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StackWidgetState();
  }
}

class StackWidgetState extends State<StackWidget>{
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      //   Align(
      //     alignment: AlignmentDirectional.topEnd, // <-- SEE HERE
      //     child: IconButton(onPressed: (){
      //       showSortDialog(context);
      //     }, icon: Icon(Icons.sort))
      // ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Select any 4 stocks',
            style: textStyleDefault(), textAlign: TextAlign.center,
          ),
        ),
        AnimSearchBar(
          width: 380,
          autoFocus: true,
          textController: textController,
          onSuffixTap: (){
          },
          onSubmitted: (String ) {  },
        ),
      ],
    );
  }

  void showSortDialog(BuildContext context){
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10)
          )
        ),
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.70,
            builder: (context, scrollContoller) => SingleChildScrollView(
              child: SortCard(),
            )
        )
    );
  }
}