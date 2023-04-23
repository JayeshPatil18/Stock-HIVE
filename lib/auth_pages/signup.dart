import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:stock_prediction/auth_pages/signin.dart';
import 'package:stock_prediction/auth_pages/verify.dart';
import '../font_helper/default_fonts.dart';
import 'package:http/http.dart' as http;
import '../main.dart';

class SignUp extends StatefulWidget{

  static String verify = "";

  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp>{
  var boarderWidth = 1.4;
  bool _passwordVisible = true;
  bool _obscureText = true;

  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  String name = "";
  String username = "";
  String phoneNo = "";
  String password = "";

  String _signUpText = "Sign Up";
  bool isClicked = false;
  _setSignUpText(String btnText) {
    setState(() {
      _signUpText = btnText;
    });
  }

  @override
  void initState() {
    _passwordVisible = true;
  }

  var _myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 60, bottom: 40, left: 40, right: 40),
          child: Container(
            child: Form(
              key: _myFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20, bottom: 50),
                      child: Text('Create Account', style: textBig())),
                  TextFormField(
                    controller: nameController,
                    validator: (String? msg){
                      msg = msg?.trim();
                      if(msg!.isEmpty){
                        return "Please enter name";
                      }if(msg.length > 50){
                        return "Name is too long";
                      }else{
                        return null;
                      }
                    },
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
                  TextFormField(
                    controller: usernameController,
                    validator: (String? msg){
                      msg = msg?.trim();
                      if(msg!.isEmpty){
                        return "Please enter Username";
                      }if(msg.length > 50){
                        return "Username is too long";
                      }else{
                        return null;
                      }
                    },
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
                  IntlPhoneField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                                color: Colors.black, width: boarderWidth)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                                color: Colors.black, width: boarderWidth)),
                    ),

                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      phoneNo = phone.completeNumber;
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (String? msg){
                      if(msg!.isEmpty){
                        return "Please enter Password";
                      }if(msg.length > 40){
                        return "Password is too long";
                      }else{
                        return null;
                      }
                    },
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
                          onPressed: () async {
                            if (!isClicked) {
                              isClicked = true;

                              bool isValid = _myFormKey.currentState!
                                  .validate();

                              if (isValid) {
                                _setSignUpText("Loading...");
                                name = nameController.text.trim();
                                username = usernameController.text.trim();
                                phoneNo = phoneNo.trim();
                                password = passwordController.text;

                                int validCode = await validDataCheck(username, phoneNo);

                                if (validCode == 200) {
                                  // Verification Code sending
                                  await FirebaseAuth.instance.verifyPhoneNumber(
                                    phoneNumber: phoneNo,
                                    verificationCompleted: (
                                        PhoneAuthCredential credential) {},
                                    verificationFailed: (
                                        FirebaseAuthException e) {},
                                    codeSent: (String verificationId,
                                        int? resendToken) {
                                      SignUp.verify = verificationId;
                                    },
                                    codeAutoRetrievalTimeout: (
                                        String verificationId) {},
                                  );

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(
                                          'Verification Code has been sent.')));

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VerifyUser(name: name,
                                                username: username,
                                                phoneNo: phoneNo,
                                                password: password,)));
                                } else if (validCode == 1) {
                                  // invalid credential
                                  _setSignUpText("Sign Up");
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("'$username' isn't available! Try another.")));
                                } else if (validCode == 0) {
                                  // user not exist
                                  _setSignUpText("Sign Up");
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "'$phoneNo' is already in use! Try another.")));
                                } else {
                                  // error
                                  _setSignUpText("Sign Up");
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
                            _signUpText,
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
        ),
    );
  }

  Future<int> validDataCheck(String username, String PhoneNo) async {
    try {
      final url = Uri.parse('$globalApiUrl/login/check');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'username': username,
        'phoneno': phoneNo,
      });
      final response = await http.post(url, headers: headers, body: body);


      if (response.statusCode == 200) {
        // valid data
        return 200;
      } else if (response.statusCode == 401) {
        // invalid username
        return 1;
      } else if (response.statusCode == 404) {
        // invalid phoneno
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

