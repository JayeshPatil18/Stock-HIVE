import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/auth_pages/signup.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/main.dart';

class VerifyUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VerifyUserState();
  }
}

class VerifyUserState extends State<VerifyUser> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 30),
                    child: Text('Verify Phone number', style: textBig())),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpInput(_fieldOne, true),
                      SizedBox(
                        width: 20,
                      ),
                      OtpInput(_fieldTwo, false),
                      SizedBox(
                        width: 20,
                      ),
                      OtpInput(_fieldThree, false),
                      SizedBox(
                        width: 20,
                      ),
                      OtpInput(_fieldFour, false)
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text("Verification Code has been send to +91 7841818938", style: TextStyle(fontSize: 16), textAlign: TextAlign.center,)),

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

                          Navigator.of(context).popUntil((route) => route.isFirst);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyHomePage(title: 'Home Page')));

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
                  onTap: (){
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
