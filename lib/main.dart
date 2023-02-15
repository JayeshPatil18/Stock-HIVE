import 'dart:async';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/pages/discussion.dart';
import 'package:stock_prediction/pages/home.dart';
import 'package:stock_prediction/pages/my_games.dart';
import 'package:stock_prediction/pages/profile.dart';
import 'package:stock_prediction/pages/ranks.dart';
import 'package:stock_prediction/pages/reels.dart';
import 'package:stock_prediction/pages/search.dart';
import 'auth_pages/welcome_page.dart';
import 'color_helper/defaultColor.dart';
import 'dialgo_boxs/predictDialogBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            subtitle2: TextStyle(fontSize: 12 ),
          )
      ),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }

}

class SplashPageState extends State<SplashPage>{
  @override
  void initState() {

    Timer(Duration(seconds: 1), () {
      if(true){
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home Page',)));
      }else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => WelcomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int pageIndex = 0;
  int tabIndex = 0;

  final screens = [
    HomePage(),
    DiscussionPage(),
    MyGamePage(),
    RanksPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    final appBars = [
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.calculate,
        //     ),
        //     onPressed: () {
        //       // do something
        //     },
        //   )
        // ],
      ),
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Discussion',
          style: TextStyle(color: Colors.black),
        ),
      ),
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'My Games',
          style: TextStyle(color: Colors.black),
        ),
      ),
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Leaderboard',
              style: TextStyle(color: Colors.black),
            ),
            InkWell(
              onTap: (){
                RanksPageState.scrollToIndex(11); // Scrolling Index for My Rank
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 4),
                child: Row(
                  children: [
                    Icon(Icons.keyboard_arrow_down, color: Colors.white,size: 25,),
                    Text('My Rank', style: TextStyle(color: Colors.white,fontSize: 14), textAlign: TextAlign.start,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      null,
      // AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: InkWell(
      //     onTap: () {
      //       showSearch(
      //           context: context,
      //           delegate: CustomSearch());
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Expanded(child: Text("Search")),
      //           Align(
      //               alignment: Alignment.topRight,
      //               child: Icon(Icons.search, size: 30,)),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    ];

    final iconItems = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.search,
        size: 30,
      ),
      ImageIcon(AssetImage('assets/icons/sPrediction.png'), size: 30,),
      ImageIcon(AssetImage('assets/icons/rank2.png'), size: 28,),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];

    return Scaffold(
      backgroundColor: defaultBgColor(),
      appBar: appBars[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          type : BottomNavigationBarType.fixed,
          onTap: (index){
          setState((){
            pageIndex = index;
            switch(pageIndex){
              case 0:
                tabIndex = 0;
                break;
              case 1:
                tabIndex = 1;
                break;
              case 2:
                tabIndex = 2;
                break;
              case 3:
                tabIndex = 3;
                break;
              case 4:
                tabIndex = 4;
                break;
              default:
                tabIndex = 0;
            }
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Discussion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/rank2.png'), size: 28,),
            label: 'Rank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: pageIndex,
        selectedItemColor: defaultColorTabSe(),
      ),

      body: Container(
          color: defaultBgColor(),
          child: screens[pageIndex]),
    );
  }
}