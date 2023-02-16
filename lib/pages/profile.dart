import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stock_prediction/auth_pages/welcome_page.dart';
import '../color_helper/defaultColor.dart';
import '../components/discussModel.dart';
import '../components/tabSection.dart';
import '../dialgo_boxs/askQuestionDialogBox.dart';
import '../dialgo_boxs/discussionDialogBox.dart';
import '../font_helper/default_fonts.dart';
import 'settings_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  var elevationValue = 0.0;

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
                      onPressed: () {},
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
                            onPressed: () {
                              Navigator.of(context).popUntil((route) => route.isFirst);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.settings,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingPage(0)));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingPage(1)));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingPage(2)));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingPage(3)));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingPage(4)));
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
                    Row(
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
                  ],
                )),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      CircleAvatar(
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.person,
                              size: 80,
                            )),
                        backgroundColor: Colors.black12,
                        radius: 50,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(Icons.add_circle,
                            color: Colors.black, size: 30),
                      ),
                    ]),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: starColor(),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: starColor(),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: starColor(),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: defaultBgColor(),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: defaultBgColor(),
                                  ),
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 6),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('Jayesh Patil',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1!
                                                  .copyWith(fontSize: 25))),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(top: 6),
                                          child: Text('@username',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2!
                                                  .copyWith(fontSize: 16)))
                                    ],
                                  )),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.only(left: 10, right: 5),
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_balance_wallet_outlined,
                                        size: 16,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),
                                        child: Text(
                                          'Revenue',
                                          style: textStyleSubTitle(
                                              textColor: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1000',
                                    style: textStyleDefault(
                                        textColor: Colors.black),
                                  ),
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.card_giftcard,
                                        size: 16,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),
                                        child: Text(
                                          'Points',
                                          style: textStyleSubTitle(
                                              textColor: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1000',
                                    style: textStyleDefault(
                                        textColor: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.only(left: 5, right: 10),
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.leaderboard_outlined,
                                        size: 16,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),
                                        child: Text(
                                          'Rank',
                                          style: textStyleSubTitle(
                                              textColor: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '#',
                                    style: textStyleDefault(
                                        textColor: Colors.black),
                                  ),
                                  Text(
                                    '1000',
                                    style: textStyleDefault(
                                        textColor: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Que & Ans', style: textStyleDefault()),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {
                        showDialogAsk(context, -1);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add, color: Colors.black),
                          SizedBox(
                            width: 4,
                          ),
                          Text('Ask Question',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: defaultBgColor(),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                    child: Column(
                      children: [
                        TabSection1(),
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
                                  child: DiscussModel())),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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

  void showDialogAsk(BuildContext context, int index){
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
