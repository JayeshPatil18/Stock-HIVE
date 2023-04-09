import 'dart:convert';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../auth_pages/phoneno.dart';
import '../data_models/UserModel.dart';
import 'package:firebase_storage/firebase_storage.dart%20';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../color_helper/defaultColor.dart';
import '../components/default_avatar.dart';
import '../font_helper/default_fonts.dart';
import '../main.dart';
import 'package:http/http.dart' as http;

class SettingPage extends StatelessWidget {
  int pageIndex = -1;

  SettingPage(int pageIndex) {
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
    PhoneNum(),
    PrivacyPolicy(),
    TermsCondition(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Future.delayed(const Duration(milliseconds: 500), () {
              Navigator.pop(context);
            });
          },
        ),
        automaticallyImplyLeading: false,
        title: Text(appBarTitles[pageIndex]),
        elevation: appBarElevation,
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

  final Reference storageRef =
      FirebaseStorage.instance.ref().child('profile_imgs');

  var imgUrl;
  File? _imageFile;
  final picker = ImagePicker();

  String profileUrl =
      "https://cdn.stealthoptional.com/images/ncavvykf/stealth/f60441357c6c210401a1285553f0dcecc4c4489e-564x564.jpg?w=328&h=328&auto=format";

  final nameController = TextEditingController();
  final usernameController = TextEditingController(text: logusername);

  bool isClicked = false;

  var _myFormKey = GlobalKey<FormState>();

  _setButtonText(String btnText) {
    setState(() {
      _buttonText = btnText;
    });
  }

  @override
  void initState() {
    getProfileInfo(logusername);
  }

  Future _uploadFile(String path) async {
    try {
      storageRef.child('${logusername}').putFile(_imageFile!);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  pickImage(ImageSource source) async {
    try {
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          Navigator.pop(context);
          _imageFile = File(pickedFile.path);
        });
      }
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  void pickSource() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Gallary'),
                onTap: () {
                  pickImage(ImageSource.gallery);
                },
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                color: defaultBgColor(),
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Camera'),
                onTap: () {
                  pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
        child: Container(
          child: Form(
            key: _myFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    pickSource();
                  },
                  child: Stack(children: [
                    _imageFile != null
                        ? CircleAvatar(
                            backgroundImage: FileImage(_imageFile!),
                            radius: 60,
                          )
                        : CircleAvatar(
                            backgroundImage: NetworkImage(profileUrl),
                            radius: 60,
                          ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Set the background color of the icon
                            shape: BoxShape
                                .circle, // Set the shape of the background to a circle
                          ),
                          child: Icon(Icons.add_circle,
                              color: Colors.black, size: 35)),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 60,
                ),
                TextFormField(
                  controller: nameController,
                  validator: (String? msg) {
                    msg = msg?.trim();
                    if (msg!.isEmpty) {
                      return "Please enter Name";
                    } else {
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
                              _setButtonText("Loading...");

                              try {
                                await _uploadFile(_imageFile!.path);
                              } catch (e) {}

                              bool isUpdated = await updateProfile();

                              if (isUpdated) {
                                _setButtonText("Updated!");

                                FocusManager.instance.primaryFocus?.unfocus();
                                Future.delayed(
                                    const Duration(seconds: 1), () {
                                  Navigator.pop(context);
                                });
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Something Went Wrong.')));
                                _setButtonText("Update Profile");
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> updateProfile() async {
    String newUsername = usernameController.text;
    String fullname = nameController.text;

    try {
      final url = Uri.parse('$globalApiUrl/users/edit/profile');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'username': logusername,
        'new_username': newUsername,
        'fullname': fullname
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

  void getProfileInfo(String username) async {
    final url = Uri.parse('$globalApiUrl/users/info?username=${username}');
    final response = await http.get(url);

    final jsonData = jsonDecode(response.body);

    setState(() {
      profileUrl = jsonData[0]['u_profileurl'];
      nameController.text = jsonData[0]['u_fullname'];
    });
  }
}

class ChangePhoneNum extends StatefulWidget {
  static String verify = "";

  @override
  State<StatefulWidget> createState() {
    return ChangePhoneNumState();
  }
}

class ChangePhoneNumState extends State<ChangePhoneNum> {
  String _buttonText = 'Change';
  var boarderWidth = 1.4;

  String phoneNo = "";

  final phoneNoController = TextEditingController();

  bool isClicked = false;

  var _myFormKey = GlobalKey<FormState>();

  _setButtonText(String btnText) {
    setState(() {
      _buttonText = btnText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 80, bottom: 40, left: 40, right: 40),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Form(
                key: _myFormKey,
                child: IntlPhoneField(
                  controller: phoneNoController,
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
                            _setButtonText("Loading...");

                            // Verification Code sending
                            await FirebaseAuth.instance.verifyPhoneNumber(
                              phoneNumber: phoneNo,
                              verificationCompleted:
                                  (PhoneAuthCredential credential) {},
                              verificationFailed: (FirebaseAuthException e) {},
                              codeSent:
                                  (String verificationId, int? resendToken) {
                                ChangePhoneNum.verify = verificationId;
                              },
                              codeAutoRetrievalTimeout:
                                  (String verificationId) {},
                            );

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text('Verification Code has been sent.')));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerifyPhoneNoChange(
                                        phoneNo: phoneNo))).then((value) => {
                                  FocusManager.instance.primaryFocus?.unfocus(),
                                  Future.delayed(
                                      const Duration(milliseconds: 500), () {
                                    Navigator.pop(context);
                                  })
                                });
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
            ],
          ),
        ),
      ),
    );
  }
}

// class UpdatePassword extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return UpdatePasswordState();
//   }
// }

// class UpdatePasswordState extends State<UpdatePassword> {
//   String _buttonText = 'Update Password';
//   var boarderWidth = 1.4;

//   bool _passwordVisible1 = true;
//   bool _obscureText1 = true;
//   bool _passwordVisible2 = true;
//   bool _obscureText2 = true;

//   @override
//   void initState() {
//     _passwordVisible1 = true;
//     _passwordVisible2 = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: EdgeInsets.only(top: 80, bottom: 40, left: 40, right: 40),
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               TextField(
//                 obscureText: _obscureText1,
//                 decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             _passwordVisible1 = !_passwordVisible1;
//                             _obscureText1 = !_obscureText1;
//                           });
//                         },
//                         icon: Icon(_passwordVisible1
//                             ? Icons.visibility
//                             : Icons.visibility_off)),
//                     labelText: 'Password',
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(13),
//                         borderSide: BorderSide(
//                             color: Colors.black, width: boarderWidth)),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(13),
//                         borderSide: BorderSide(
//                             color: Colors.black, width: boarderWidth))),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               TextField(
//                 obscureText: _obscureText2,
//                 decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             _passwordVisible2 = !_passwordVisible2;
//                             _obscureText2 = !_obscureText2;
//                           });
//                         },
//                         icon: Icon(_passwordVisible2
//                             ? Icons.visibility
//                             : Icons.visibility_off)),
//                     labelText: 'Repeate Password',
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(13),
//                         borderSide: BorderSide(
//                             color: Colors.black, width: boarderWidth)),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(13),
//                         borderSide: BorderSide(
//                             color: Colors.black, width: boarderWidth))),
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               Container(
//                   height: 50,
//                   width: double.infinity,
//                   margin: EdgeInsets.only(bottom: 60),
//                   child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(13))),
//                       onPressed: () {
//                         setState(() {
//                           _buttonText = 'Updated!';

//                           Future.delayed(const Duration(milliseconds: 500), () {
//                             Navigator.pop(context);
//                           });
//                         });
//                       },
//                       child: Text(
//                         _buttonText,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 18),
//                       ))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class PrivacyPolicy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrivacyPolicyState();
  }
}

class PrivacyPolicyState extends State<PrivacyPolicy> {
  var boarderWidth = 1.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Introduction',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'Our privacy policy outlines the types of personal information that is received and collected by our app and how it is used.',
              ),
              SizedBox(height: 16.0),
              Text(
                'Information We Collect',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We may collect information that you provide to us, such as your name and email address, when you sign up for our app.',
              ),
              SizedBox(height: 16.0),
              Text(
                'How We Use Your Information',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We may use the information we collect to personalize your experience with our app and to improve our services. We will never sell your personal information to third parties.',
              ),
              SizedBox(height: 16.0),
              Text(
                'Changes to Our Privacy Policy',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We reserve the right to modify or update our privacy policy at any time. Any changes will be posted on this page.',
              ),
            ],
          ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introduction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'These terms and conditions govern your use of our mobile application. By using our app, you accept these terms and conditions in full. If you disagree with these terms and conditions or any part of these terms and conditions, you must not use our app.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'License to use app',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Unless otherwise stated, we or our licensors own the intellectual property rights in the app and material on the app. Subject to the license below, all these intellectual property rights are reserved.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Limitations of liability',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'We will not be liable to you in respect of any special, indirect or consequential loss or damage. Nothing in these terms and conditions will exclude or limit any warranty implied by law that it would be unlawful to exclude or limit.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerifyPhoneNoChange extends StatefulWidget {
  String phoneNo;

  VerifyPhoneNoChange({
    required this.phoneNo,
  });

  @override
  State<StatefulWidget> createState() {
    return VerifyPhoneNoChangeState(phoneNo);
  }
}

class VerifyPhoneNoChangeState extends State<VerifyPhoneNoChange> {
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

  VerifyPhoneNoChangeState(String phoneNo) {
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
                  child: Text(
                    "Verification Code has been send to ${phoneNo}",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  )),
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
                        finalCode = _fieldOne.text +
                            _fieldTwo.text +
                            _fieldThree.text +
                            _fieldFour.text +
                            _fieldFive.text +
                            _fieldSix.text;

                        try {
                          // PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: SignUp.verify, smsCode: finalCode);

                          // await auth.signInWithCredential(credential);

                          bool isDone =
                              await isPhoneNoUpdated(logusername, phoneNo);

                          Navigator.pop(context);
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Invalid Verification Code')));
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
                onTap: () async {
                  // Verification Code sending
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: phoneNo,
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      ChangePhoneNum.verify = verificationId;
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Verification Code has been sent.')));
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

  Future<bool> isPhoneNoUpdated(String username, String phoneNo) async {
    try {
      final url = Uri.parse('$globalApiUrl/users/edit/phoneno');
      final headers = {'Content-Type': 'application/json'};
      final body = json.encode({
        'username': username,
        'phoneNo': phoneNo,
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
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
