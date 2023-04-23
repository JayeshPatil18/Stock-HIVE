import 'package:firebase_storage/firebase_storage.dart%20';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/components/ProfileHeaderView.dart';
import '../color_helper/defaultColor.dart';
import '../components/ProfileHeader.dart';
import '../components/ProfileTabs.dart';
import '../components/ProfileTabsView.dart';
import '../components/discussModel.dart';
import '../components/tabSection.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../font_helper/default_fonts.dart';
import '../main.dart';
import '../utils/token_helper.dart';

class ViewProfile extends StatefulWidget{

  final userId;

  ViewProfile({
    required this.userId
  });

  static final sectionDialog = <Widget>[
    DiscussDialogBox(),
    DiscussDialogBoxSecondary(),
  ];

  @override
  State<ViewProfile> createState() => _ViewProfileState(userId);
}

class _ViewProfileState extends State<ViewProfile> {
  Future _refresh() async{
    setState(() {

    });
  }

  int? userId;

  _ViewProfileState(int userId) {
    this.userId = userId;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: appBarElevation,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              onPressed: () {
                _refresh();
              },
            );
          })
        ],
      ),
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                    [
                      ProfileHeaderView(userId: widget.userId),
                    ]
                ),
              )
            ];
          },
          body: Container(
            color: defaultBgColor(),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2,
                                color: Colors.black),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TabBar(
                            indicator: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(text: "Tweets",),
                              Tab(text: "Replies",),
                              Tab(text: "Likes",),
                            ]),
                      ),
                      Container(
                        color: Colors.grey,
                        height: 0.3,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      TweetsTabView(userId: widget.userId),
                      RepliesTabView(userId: widget.userId),
                      LikesTabView(userId: widget.userId)
                    ],
                  ),
                ),
              ],
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
            child: ViewProfile.sectionDialog[TabSection2State.currentIndex],
          ),
        ));
  }
}