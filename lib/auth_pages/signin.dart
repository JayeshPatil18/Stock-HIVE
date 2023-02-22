import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/auth_pages/forgot_password.dart';
import 'package:stock_prediction/auth_pages/signup.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/main.dart';

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

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 80, bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 50),
                    child: Text('Sign In Now', style: textBig())),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Phone number or Username',
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
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                          _obscureText = !_obscureText;
                        });
                      }, icon: Icon(
                          _passwordVisible
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
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                      },
                        child: Text("Forgot Password?", textAlign: TextAlign.center)),
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
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyHomePage(title: 'Home Page')));
                        },
                        child: Text(
                          'Sign In',
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
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Sign Up",
                    style: textStyleLeader(),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
