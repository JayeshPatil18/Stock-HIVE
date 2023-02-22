import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/auth_pages/signin.dart';
import 'package:stock_prediction/auth_pages/verify.dart';
import '../font_helper/default_fonts.dart';
import '../main.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp>{
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
          padding: EdgeInsets.only(top: 60, bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 50),
                    child: Text('Create Account', style: textBig())),
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
                      labelText: 'Create Username',
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

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VerifyUser()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
                Text("Already have an account?"),
                Container(
                  height: 4,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
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
    );
  }
}