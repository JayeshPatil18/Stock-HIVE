import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';

import '../components/discussModel.dart';
import '../components/queModel.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../dialgo_boxs/predictDialogBox.dart';
import '../font_helper/default_fonts.dart';

class DiscussionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DiscussionPageState();
  }

}

class _DiscussionPageState extends State<DiscussionPage>{
  var elevationValue = 0.0;

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
                    onTap: () {
                      showDialogDiscuss(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: DiscussModel(),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      showDialogDiscuss(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: DiscussModel(),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      showDialogDiscuss(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: elevationValue,
                          child: DiscussModel(),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showDialogDiscuss(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.80,
          maxChildSize: 0.96,
          minChildSize: 0.60,
          builder: (context, scrollContoller) => SingleChildScrollView(
            controller: scrollContoller,
            child: DiscussDialogBox(),
          ),
        ));
  }
}
