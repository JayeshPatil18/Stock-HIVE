import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/pages/home.dart';
import 'package:stock_prediction/pages/profile.dart';
import 'package:stock_prediction/pages/ranks.dart';
import 'package:stock_prediction/pages/reels.dart';
import 'package:stock_prediction/pages/search.dart';

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
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
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
  int index = 0;
  static Color mainColor = Color(0xffeaeaea);



  final screens = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    RanksPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    int tabIndex = 0;
    final appBars = [
    AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Stock Prediction',
        style: TextStyle(color: Colors.black),
      ),
    ),
    AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text('Search'),
      actions: [
        IconButton(onPressed: (){
          showSearch(
              context: context,
              delegate: CustomSearch());
        }, icon: Icon(Icons.search))
      ],
    ),
  ];

    final items = <Widget>[
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
      backgroundColor: mainColor,
      extendBody: true,
      appBar: appBars[0],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(),
        child: CurvedNavigationBar(
          key: navigationKey,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          height: 60,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),

      body: screens[index],
    );
  }
}
