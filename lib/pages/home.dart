import 'package:flutter/material.dart';
import 'package:stock_prediction/color_helper/defaultColor.dart';
import 'package:stock_prediction/components/discussModel.dart';
import 'package:stock_prediction/utils/token_helper.dart';
import '../components/queModel.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../dialgo_boxs/predictDialogBox.dart';
import '../font_helper/default_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var elevationValue = 0.0;
  int currentIndex = 0;

  int? token;

  List<Widget> onboards = [
    //1st Image of Slider 
    Image.network('https://media.istockphoto.com/id/1038727610/photo/liquid-shapes-abstract-holographic-3d-wavy-background.jpg?s=612x612&w=0&k=20&c=OSfb3DuCHkjERNJTpK4GzMN851GhHQA6Evn9DKc-kw4='),

    //2nd Image of Slider
    Image.network('https://media.istockphoto.com/id/1038727610/photo/liquid-shapes-abstract-holographic-3d-wavy-background.jpg?s=612x612&w=0&k=20&c=OSfb3DuCHkjERNJTpK4GzMN851GhHQA6Evn9DKc-kw4='),

    //3rd Image of Slider
    Image.network('https://media.istockphoto.com/id/1038727610/photo/liquid-shapes-abstract-holographic-3d-wavy-background.jpg?s=612x612&w=0&k=20&c=OSfb3DuCHkjERNJTpK4GzMN851GhHQA6Evn9DKc-kw4='),

    //4rd Image of Slider
    Image.network('https://media.istockphoto.com/id/1038727610/photo/liquid-shapes-abstract-holographic-3d-wavy-background.jpg?s=612x612&w=0&k=20&c=OSfb3DuCHkjERNJTpK4GzMN851GhHQA6Evn9DKc-kw4=')
  ];

  int _selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  _getToken() async{
    token = await getTokenId();
  }

  @override
  void initState() {
    _getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 224,
                  child: CarouselSlider(
                    items: onboards,
                    //Slider Container properties
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: false,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: onboards.map((section) {
                    return Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == onboards.indexOf(section)
                              ? Colors.black
                              : Colors.white),
                    );
                  }).toList(),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialogPredict(context, -1);
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 8),
                            width: double.infinity,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: elevationValue,
                              child: QuestionModel(selectedIndex: -1, isDialogBox: false)
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
                              child: DiscussModel(tId: "1", fullname: 'Rajesh Hatli', username: 'nahila', tTxt: 'What about adani', tDate: '2018-10-20T00:00:00.000Z', tLikes: "54", tComments: "45", tUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s', isLiked: "-1",),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          showDialogPredict(context, -1);
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 8),
                            width: double.infinity,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: elevationValue,
                                child: QuestionModel(selectedIndex: -1, isDialogBox: false)
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
                              child: DiscussModel(tId: "1", fullname: 'Rajesh Hatli', username: 'nahila', tTxt: 'What about adani', tDate: '2018-10-20T00:00:00.000Z', tLikes: "54", tComments: "45", tUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2P3SxrEq6z7iY6dXOD0K18RuW2kHwYHInoI2yANC2XQ&s', isLiked: "-1",),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          showDialogPredict(context, -1);
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 8),
                            width: double.infinity,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: elevationValue,
                                child: QuestionModel(selectedIndex: -1, isDialogBox: false)
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  void showDialogPredict(BuildContext context, int index){
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
            child: QueDialogBox(selectedIndex: index),
          ),
        ));
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
