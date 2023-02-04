import 'package:flutter/material.dart';

import '../components/tab_controller.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 60),
        child: ProfileTabs());
  }
}