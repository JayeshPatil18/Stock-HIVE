import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:stock_prediction/auth_pages/signin.dart';
import 'package:stock_prediction/auth_pages/verify.dart';
import '../font_helper/default_fonts.dart';
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
                          onPressed: () async{

                            bool isValid = _myFormKey.currentState!.validate();

                            if(isValid){

                            name = nameController.text.trim();
                            username = usernameController.text.trim();
                            phoneNo = phoneNo.trim();
                            password = passwordController.text;

                              // Verification Code sending
                              await FirebaseAuth.instance.verifyPhoneNumber(
                                phoneNumber: phoneNo,
                                verificationCompleted: (PhoneAuthCredential credential) {},
                                verificationFailed: (FirebaseAuthException e) {},
                                codeSent: (String verificationId, int? resendToken) {
                                  SignUp.verify = verificationId;
                                },
                                codeAutoRetrievalTimeout: (String verificationId) {},
                              );

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Verification Code has been sent.')));

                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          VerifyUser(name: name, username: username, phoneNo: phoneNo, password: password,)));
                            }
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
        ),
    );
  }
}

