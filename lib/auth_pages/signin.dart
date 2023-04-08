import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_prediction/auth_pages/forgot_password.dart';
import 'package:stock_prediction/auth_pages/number_verify.dart';
import 'package:stock_prediction/auth_pages/phoneno.dart';
import 'package:stock_prediction/auth_pages/signup.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/main.dart';

import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  var boarderWidth = 1.4;
  bool _passwordVisible = true;
  bool _obscureText = true;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var _myFormKey = GlobalKey<FormState>();

  String username = "";
  String password = "";

  String _signInText = "Sign In";
  bool isClicked = false;

  @override
  void initState() {
    _passwordVisible = true;
  }

  _setSignInText(String btnText) {
    setState(() {
      _signInText = btnText;
    });
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
                    child: Text('Sign In Now', style: textBig())),
                TextFormField(
                  controller: usernameController,
                  validator: (String? msg) {
                    msg = msg?.trim();
                    if (msg!.isEmpty) {
                      return "Please enter Username";
                    } else {
                      return null;
                    }
                  },
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
                  height: 25,
                ),
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
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneNum()));
                        },
                        child: Text("Forgot Password?",
                            textAlign: TextAlign.center)),
                  ),
                ),
                SizedBox(
                  height: 40,
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

                            _setSignInText("Loading...");

                            username = usernameController.text.trim();
                            password = passwordController.text;

                            int result = await logIn(username, password);

                            if (result == 200) {
                              // successful loggedIn
                              var shardPref =
                                  await SharedPreferences.getInstance();
                              shardPref.setBool(
                                  SplashPageState.KEY_LOGIN, true);

                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);

                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyHomePage(title: 'Home Page')));
                            } else if (result == 1) {
                              // invalid credential
                              _setSignInText("Sign In");
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Wrong Password.')));
                            } else if (result == 0) {
                              // user not exist
                              _setSignInText("Sign In");
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'User not exist, Sign Up first.')));
                            } else {
                              // error
                              _setSignInText("Sign In");
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Something went wrong! Try again.')));
                            }
                          }
                          isClicked = false;
                          }

                          
                        },
                        child: Text(
                          _signInText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
                Text("Don't have an account?"),
                Container(
                  height: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    'Sign Up',
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

  Future<int> logIn(String username, String password) async {
    try {
      final url = Uri.parse('$globalApiUrl/login');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'username': username,
        'password': password,
      });
      final response = await http.post(url, headers: headers, body: body);

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        // successful loggedIn
        var myToken = data['token'];
        var shardPref = await SharedPreferences.getInstance();
        shardPref.setString(SplashPageState.KEY_LOGIN_DETAILS, myToken);
        return 200;
      } else if (response.statusCode == 401 &&
          data['message'] == "invalid credentials") {
        // invalid credential
        return 1;
      } else if (response.statusCode == 404 &&
          data['message'] == "user not exist") {
        // user not exist
        return 0;
      } else {
        // error
        return -1;
      }
    } catch (e) {
      return -1;
    }
  }
}
