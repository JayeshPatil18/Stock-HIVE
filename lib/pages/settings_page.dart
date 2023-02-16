import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_helper/defaultColor.dart';
import '../font_helper/default_fonts.dart';


class SettingPage extends StatelessWidget {
  int pageIndex = -1;

  SettingPage(int pageIndex){
    this.pageIndex = pageIndex;
  }

  List<String> appBarTitles = [
    'Edit Profile',
    'Change Phone number',
    'Update Password',
    'Privacy Policy',
    'Terms and Conditions',
  ];

  final settingPages = [
    EditProfile(),
    ChangePhoneNum(),
    UpdatePassword(),
    PrivacyPolicy(),
    TermsCondition(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[pageIndex]),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: settingPages[pageIndex],
    );
  }
}


class EditProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditProfileState();
  }
}

class EditProfileState extends State<EditProfile> {
  String _buttonText = 'Update Profile';
  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  CircleAvatar(
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.person,
                          size: 90,
                        )),
                    backgroundColor: Colors.black12,
                    radius: 60,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(Icons.add_circle, color: Colors.black, size: 40),
                  ),
                ]),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Full Name',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 60),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          setState(() {
                            _buttonText = 'Updated!';

                            Future.delayed(const Duration(milliseconds: 500), () {
                              Navigator.pop(context);
                            });
                          });
                        },
                        child: Text(
                          _buttonText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ChangePhoneNum extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChangePhoneNumState();
  }
}

class ChangePhoneNumState extends State<ChangePhoneNum> {
  String _buttonText = 'Change';
  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Phone number',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 60),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          setState(() {
                            _buttonText = 'Changed!';

                            Future.delayed(const Duration(milliseconds: 500), () {
                              Navigator.pop(context);
                            });
                          });
                        },
                        child: Text(
                          _buttonText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class UpdatePassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UpdatePasswordState();
  }
}

class UpdatePasswordState extends State<UpdatePassword> {
  String _buttonText = 'Update Password';
  var boarderWidth = 1.4;

  bool _passwordVisible1 = true;
  bool _obscureText1 = true;
  bool _passwordVisible2 = true;
  bool _obscureText2 = true;

  @override
  void initState() {
    _passwordVisible1 = true;
    _passwordVisible2 = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _passwordVisible1 = !_passwordVisible1;
                          _obscureText1 = !_obscureText1;
                        });
                      }, icon: Icon(
                          _passwordVisible1
                              ? Icons.visibility
                              : Icons.visibility_off
                      )),
                      labelText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _passwordVisible2 = !_passwordVisible2;
                          _obscureText2 = !_obscureText2;
                        });
                      }, icon: Icon(
                          _passwordVisible2
                              ? Icons.visibility
                              : Icons.visibility_off
                      )),
                      labelText: 'Repeate Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 60),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          setState(() {
                            _buttonText = 'Updated!';

                            Future.delayed(const Duration(milliseconds: 500), () {
                              Navigator.pop(context);
                            });
                          });
                        },
                        child: Text(
                          _buttonText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class PrivacyPolicy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrivacyPolicyState();
  }
}

class PrivacyPolicyState extends State<PrivacyPolicy> {
  String _buttonText = 'Update Profile';
  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Text(
          // Paste your privacy policy content here
          'Privacy Policy\n\n'
              'Effective date: [date]\n\n'
              '[Your Company Name] ("us", "we", or "our") operates [App Name] (the "App"). This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our App and the choices you have associated with that data.\n\n'
              '...',
        ),
      ),
    );
  }
}


class TermsCondition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TermsConditionState();
  }
}

class TermsConditionState extends State<TermsCondition> {
  String _buttonText = 'Update Profile';
  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  CircleAvatar(
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.person,
                          size: 90,
                        )),
                    backgroundColor: Colors.black12,
                    radius: 60,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(Icons.add_circle, color: Colors.black, size: 40),
                  ),
                ]),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Full Name',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                              color: Colors.black, width: boarderWidth))),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 60),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          setState(() {
                            _buttonText = 'Updated!';

                            Future.delayed(const Duration(milliseconds: 500), () {
                              Navigator.pop(context);
                            });
                          });
                        },
                        child: Text(
                          _buttonText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
