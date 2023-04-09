import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_prediction/auth_pages/signin.dart';
import 'package:stock_prediction/auth_pages/signup.dart';
import 'package:stock_prediction/auth_pages/welcome_page.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/main.dart';

import 'package:http/http.dart' as http;

class ForgotPassword extends StatefulWidget {
  String phoneNo;

  ForgotPassword({
    required this.phoneNo,
  });

  @override
  State<StatefulWidget> createState() {
    return ForgotPasswordState(phoneNo);
  }
}

class ForgotPasswordState extends State<ForgotPassword> {
  String _buttonText = 'Update Password';
  var boarderWidth = 1.4;

  bool _passwordVisible = true;
  bool _obscureText = true;

  bool _passwordVisibleRe = true;
  bool _obscureTextRe = true;

  final passwordController = TextEditingController();
  final passwordReController = TextEditingController();
  String phoneNo = "";

  var _myFormKey = GlobalKey<FormState>();

  bool isClicked = false;

  ForgotPasswordState(String phoneNo) {
    this.phoneNo = phoneNo;
  }

  _buttonTextChange(String buttonText) {
    setState(() {
      _buttonText = buttonText;
    });
  }

  @override
  void initState() {
    _passwordVisible = true;
    bool _passwordVisibleRe = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 80, bottom: 40, left: 40, right: 40),
        child: Container(
          child: Form(
            key: _myFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 50),
                    child: Text('Update Password', style: textBig())),
                TextFormField(
                  controller: passwordController,
                  obscureText: _obscureText,
                  validator: (String? msg) {
                    if (msg!.isEmpty) {
                      return "Please enter Password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(_passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off)),
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
                TextFormField(
                  controller: passwordReController,
                  obscureText: _obscureText,
                  validator: (String? msg) {
                    if (msg!.isEmpty) {
                      return "Please Re-enter Password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisibleRe = !_passwordVisibleRe;
                              _obscureTextRe = !_obscureTextRe;
                            });
                          },
                          icon: Icon(_passwordVisibleRe
                              ? Icons.visibility
                              : Icons.visibility_off)),
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
                        onPressed: () async {
                          if (!isClicked) {
                            isClicked = true;

                            bool isValid = _myFormKey.currentState!.validate();

                            if (isValid) {
                              if (passwordController.text ==
                                  passwordReController.text) {
                                _buttonTextChange("Loading...");

                                bool isUpdated = await isPassUpdated(
                                    phoneNo, passwordController.text);

                                if (isUpdated) {
                                  _buttonTextChange("Updated!");
                                  Future.delayed(const Duration(seconds: 1),
                                      () async {
                                    var shardPref =
                                        await SharedPreferences.getInstance();
                                    var isLoggedIn = shardPref
                                        .getBool(SplashPageState.KEY_LOGIN);

                                    if (isLoggedIn != null) {
                                      if (isLoggedIn) {
                                        Navigator.of(context)
                                            .popUntil((route) => route.isFirst);
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                      title: 'Home Page',
                                                    )));
                                      } else {
                                        Navigator.of(context)
                                            .popUntil((route) => route.isFirst);

                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WelcomePage()));
                                      }
                                    } else {
                                      Navigator.of(context)
                                          .popUntil((route) => route.isFirst);

                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WelcomePage()));
                                    }
                                  });
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Something went wrong! Try again.')));
                                  _buttonTextChange("Update Password");
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Both Password not matched!')));
                                _buttonTextChange("Update Password");
                              }
                            }
                            isClicked = false;
                          }
                        },
                        child: Text(
                          _buttonText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
                InkWell(
                  onTap: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                  child: Text(
                    "Sign In",
                    style: textStyleLeader(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> isPassUpdated(String phoneNo, String password) async {
    try {
      final url = Uri.parse('$globalApiUrl/users/edit/password');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'phoneNo': phoneNo,
        'password': password,
      });
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
