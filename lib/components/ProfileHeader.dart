import 'dart:convert';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart%20';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stock_prediction/data_models/UserModel.dart';

import '../color_helper/defaultColor.dart';
import '../data_models/TweetsModel.dart';
import '../font_helper/default_fonts.dart';
import 'package:http/http.dart' as http;
import '../main.dart';

class ProfileHeader extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProfileHeaderState();
  }
}

class ProfileHeaderState extends State<ProfileHeader>{
  List<UserModel> usersList = [];
  var elevationValue = 0.0;

  String profileUrl = "https://cdn.stealthoptional.com/images/ncavvykf/stealth/f60441357c6c210401a1285553f0dcecc4c4489e-564x564.jpg?w=328&h=328&auto=format";

  final Reference storageRef = FirebaseStorage.instance.ref().child('profile_imgs');

  int maxStarCount = 5;

  var imgUrl;
  File? _imageFile;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getProfileInfo(logusername),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            color: Colors.white,
              height: 223,
              child: const Center(child: CircularProgressIndicator()));
        } else {
          var user = usersList[0];
          int? starCount = user.uStarcount;
          return Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          pickSource();
                        },
                        child: Stack(children: [
                          user.uProfileurl.toString() != "img_url"
                              ? CircleAvatar(
                            backgroundImage: NetworkImage(user.uProfileurl.toString()),
                            radius: 50,
                          )
                              : const CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/icons/default_avatar.jpg"),
                            radius: 50,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // Set the background color of the icon
                                  shape: BoxShape.circle, // Set the shape of the background to a circle
                                ),
                                child: Icon(Icons.add_circle, color: Colors.black, size: 30)),
                          ),
                        ]),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                              Container(
                              height: 22,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: maxStarCount,
                                itemBuilder: (context, index) {
                                  if(index < starCount!){
                                    return Icon(
                                      Icons.star,
                                      color: starColor(),
                                    );
                                  }else{
                                    return Icon(
                                      Icons.star,
                                      color: defaultBgColor(),
                                    );
                                  }
                                },
                              ),
                            ),
                            Container(
                                    margin: EdgeInsets.only(top: 6),
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.topLeft,
                                            child: Text('${user.uFullname}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1!
                                                    .copyWith(fontSize: 25))),
                                        Container(
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(top: 6),
                                            child: Text('${user.username}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(fontSize: 16)))
                                      ],
                                    )),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.only(left: 10, right: 5),
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.account_balance_wallet_outlined,
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 4),
                                          child: Text(
                                            'Revenue',
                                            style: textStyleSubTitle(
                                                textColor: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${user.uRevenue}',
                                      style: textStyleDefault(
                                          textColor: Colors.black),
                                    ),
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.only(left: 5, right: 5),
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.card_giftcard,
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 4),
                                          child: Text(
                                            'Points',
                                            style: textStyleSubTitle(
                                                textColor: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${user.uPoints}',
                                      style: textStyleDefault(
                                          textColor: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.only(left: 5, right: 10),
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.leaderboard_outlined,
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 4),
                                          child: Text(
                                            'Rank',
                                            style: textStyleSubTitle(
                                                textColor: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '#',
                                      style: textStyleDefault(
                                          textColor: Colors.black),
                                    ),
                                    Text(
                                      '${user.uRank}',
                                      style: textStyleDefault(
                                          textColor: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Future _uploadFile(String path) async{
    try{
      storageRef.child('${logusername}').putFile(_imageFile!);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  pickImage(ImageSource source) async{
    try{
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          Navigator.pop(context);
          _imageFile = File(pickedFile.path);
        });
        await _uploadFile(_imageFile!.path);
      }
    } catch (error){
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
                onTap: (){
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
                onTap: (){
                  pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<List<UserModel>> getProfileInfo(String username) async{
    
    final url = Uri.parse('$globalApiUrl/users/info?username=${username}');
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    usersList.clear();
    if (response.statusCode == 200) {
      for (Map i in data) {
        usersList.add(UserModel.fromJson(i));
      }
      return usersList;
    } else {
      return usersList;
    }
  }
}