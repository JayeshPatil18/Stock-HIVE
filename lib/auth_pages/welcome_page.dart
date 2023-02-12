import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {

  int currentIndex = 0;

  List lottieAssets = [
    Lottie.asset('assets/anim/predict_img.json',
        height: 260, reverse: false, repeat: true, fit: BoxFit.cover),
    Lottie.asset('assets/anim/contest_img.json',
        height: 260, reverse: false, repeat: true, fit: BoxFit.cover),
    Lottie.asset('assets/anim/discuss_img.json',
        height: 200, reverse: false, repeat: true, fit: BoxFit.cover)
  ];

  List sections = [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Lottie.asset('assets/anim/predict_img.json',
            height: 260, reverse: false, repeat: true, fit: BoxFit.cover),
        Container(
            margin: EdgeInsets.only(top: 20),
            child: Text('Predict & Win', style: textStyleDefault())),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Lottie.asset('assets/anim/contest_img.json',
            height: 260, reverse: false, repeat: true, fit: BoxFit.cover),
        Container(
            margin: EdgeInsets.only(top: 20),
            child: Text('Play Contest', style: textStyleDefault())),
      ],
    ),
    Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: Lottie.asset('assets/anim/discuss_img.json',
              height: 220, reverse: false, repeat: true, fit: BoxFit.cover),
        ),
        Align(
            alignment: AlignmentDirectional.bottomCenter, // <-- SEE HERE
            child: Text('Discuss', style: textStyleDefault())),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
        Container(
          height: 320,
          margin: EdgeInsets.only(top: 60, bottom: 40),
          child: PageView.builder(
            onPageChanged: (int index){
              setState(() {
                currentIndex = index;
              });
            },
              itemCount: 3,
              itemBuilder: (context, index) {
                return sections[index];
              }),
        ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  sections.length,
                      (index) => buildDot(index, context),
                ),
              ),
            ),
      ],
    ));
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
    );
  }
}
