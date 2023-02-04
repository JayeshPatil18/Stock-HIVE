import 'package:flutter/material.dart';

import '../components/tab_controller.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ProfileTabs());
  }
}