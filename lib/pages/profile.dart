
import 'dart:convert';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:firebase_storage/firebase_storage.dart%20';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_prediction/auth_pages/welcome_page.dart';
import '../color_helper/defaultColor.dart';
import '../components/ProfileHeader.dart';
import '../components/ProfileTabs.dart';
import '../components/discussModel.dart';
import '../components/tabSection.dart';
import '../dialgo_boxs/askQuestionDialogBox.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../font_helper/default_fonts.dart';
import '../main.dart';
import 'settings_page.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  var elevationValue = 0.0;

  String profileUrl = "https://cdn.stealthoptional.com/images/ncavvykf/stealth/f60441357c6c210401a1285553f0dcecc4c4489e-564x564.jpg?w=328&h=328&auto=format";

  static final sectionDialog = <Widget>[
    DiscussDialogBox(),
    DiscussDialogBoxSecondary(),
  ];

  void showInviteDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Invite and Earn',
              style: textBigSubtitle(),
              textAlign: TextAlign.center,
            ),
            content: Container(
              height: 240,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Lottie.asset('assets/anim/coins_loading.json',
                        height: 240,
                        reverse: false,
                        repeat: true,
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                      'Invite more friends and you will get points when they will join app through your link',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '10 Points for each user',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            actions: [
              Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                      onPressed: () {
                        final String url = 'https://www.free-css.com/assets/files/free-css-templates/preview/page274/sync/';

                        Share.share('Check out our app at $url');
                      },
                      child: Text(
                        'Invite',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ))),
            ],
          );
        });
  }

  void showLogoutDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Logout', style: textStyleBtn()),
            content: Text('Do you really want to logout?',
                style: textStyleSubTitle()),
            actions: [
              Container(
                width: 400,
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () async{

                              var shardPref =
                                  await SharedPreferences.getInstance();
                              shardPref.setBool(
                                  SplashPageState.KEY_LOGIN, false);

                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);

                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          WelcomePage()));
                            },
                            child: Text('Yes',
                                style: TextStyle(color: Colors.red)))),
                    SizedBox(width: 20),
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('No',
                                style: TextStyle(color: Colors.green)))),
                  ],
                ),
              ),
            ],
          );
        });
  }

  void closeDialogBox() {
    setState(() {
      Navigator.pop(context);
    });
  }

  void navigateToEditPage(int index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SettingPage(index)));
  }

  Future<void> _launchURL() async {
    String url = "live-portfolio.netlify.app";
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Unable to show info.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: appBarElevation,
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Builder(builder: (context) {
            return Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.refresh,
                  ),
                  onPressed: () {
                    _refresh();
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_comment_rounded,
                  ),
                  onPressed: () {
                    showDialogAsk(context);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ],
            );
          })
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsets.only(top: 28, left: 20, right: 20),
                  width: double.infinity,
                  height: 100,
                  // Sets the height of the drawer header
                  color: Colors.white,
                  child: Text('Settings', style: textBigSubtitle()),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    closeDialogBox();
                    showInviteDialog();
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.card_giftcard,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Invite and Earn',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    navigateToEditPage(0);
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.edit_outlined,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Edit Profile',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    navigateToEditPage(1);
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.numbers,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Change Phone number',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    navigateToEditPage(2);
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.lock_outlined,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Update Password',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    navigateToEditPage(3);
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.privacy_tip_outlined,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Privacy Policy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    navigateToEditPage(4);
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.note_alt_outlined,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Terms and Conditions',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
                InkWell(
                  onTap: () {
                    closeDialogBox();
                    showLogoutDialog();
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.logout,
                                size: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Logout',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 16)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: defaultBgColor(),
                  width: double.infinity,
                  height: 1,
                ),
              ],
            ),
            Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _launchURL();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.code,
                            size: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('Developer Info',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 3,
        child: RefreshIndicator(
          onRefresh: () async{ 
            _refresh();
           },
          child: NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        ProfileHeader(),
                      ]
                  ),
                )
              ];
            },
            body: Container(
              color: Colors.transparent,
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
                        TweetsTab(),
                        RepliesTab(),
                        LikesTab()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future _refresh() async{
    setState(() {

    });
  }

  void showDialogDiscuss(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.80,
          maxChildSize: 0.96,
          minChildSize: 0.60,
          builder: (context, scrollContoller) => SingleChildScrollView(
            controller: scrollContoller,
            child: sectionDialog[TabSection1State.currentIndex],
          ),
        ));
  }

  void showDialogAsk(BuildContext context){
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
            child: AskQueDialogBox(),
          ),
        ));
  }
}
