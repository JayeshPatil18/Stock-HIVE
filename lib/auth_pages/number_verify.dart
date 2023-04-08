import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/auth_pages/forgot_password.dart';
import 'package:stock_prediction/auth_pages/signin.dart';
import 'package:stock_prediction/auth_pages/signup.dart';
import 'package:stock_prediction/auth_pages/welcome_page.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/main.dart';
import 'package:http/http.dart' as http;

class VerifyPhoneNo extends StatefulWidget {

  String phoneNo;

  VerifyPhoneNo({
  required this.phoneNo,
  });

  @override
  State<StatefulWidget> createState() {
    return VerifyPhoneNoState(phoneNo);
  }
}

class VerifyPhoneNoState extends State<VerifyPhoneNo> {

  String phoneNo = "";

  final FirebaseAuth auth = FirebaseAuth.instance;

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  String finalCode = "";

  var boarderWidth = 1.4;

  VerifyPhoneNoState(String phoneNo){
    this.phoneNo = phoneNo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 80, bottom: 40, left: 20, right: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 30),
                    child: Text('Verify Phone number', style: textBig())),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpInput(_fieldOne, true),
                      SizedBox(
                        width: 5,
                      ),
                      OtpInput(_fieldTwo, false),
                      SizedBox(
                        width: 5,
                      ),
                      OtpInput(_fieldThree, false),
                      SizedBox(
                        width: 5,
                      ),
                      OtpInput(_fieldFour, false),
                      SizedBox(
                        width: 5,
                      ),
                      OtpInput(_fieldFive, false),
                      SizedBox(
                        width: 5,
                      ),
                      OtpInput(_fieldSix, false)
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text("Verification Code has been send to ${phoneNo}", style: TextStyle(fontSize: 16), textAlign: TextAlign.center,)),

                SizedBox(
                  height: 60,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 60, left: 20, right: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () async {

                          finalCode = _fieldOne.text + _fieldTwo.text + _fieldThree.text + _fieldFour.text + _fieldFive.text + _fieldSix.text;

                          try{
                            // PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: SignUp.verify, smsCode: finalCode);

                            // await auth.signInWithCredential(credential);

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPassword(phoneNo: phoneNo,)));

                          }catch(e){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Verification Code')));
                          }
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ))),
                Text("Didn’t Received the Code?"),
                Container(
                  height: 4,
                ),
                InkWell(
                  onTap: () async{
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

                  },
                  child: Text(
                    "Resend",
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

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
