import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/font_helper/default_fonts.dart';
import 'package:stock_prediction/pages/profile.dart';

import '../color_helper/defaultColor.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 60),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2,
                          color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: "Questions",),
                        Tab(text: "Users",),
                      ]),
                ),

                Expanded(child: Container(
                  color: defaultBgColor(),
                  margin: EdgeInsets.only(top: 10),
                  child: TabBarView(
                    children: [
                      SearchQue(),
                      SearchUsers(),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate{
  List<String> allData = ['American', 'Russia', 'China', 'Germany', 'Italy'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed: (){
        query = '';
      }, icon: const Icon(Icons.clear, color: Colors.black,))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return(
      IconButton(onPressed: (){
        close(context, null);
      }, icon: const Icon(Icons.arrow_back, color: Colors.black,))
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount:matchQuery.length,
        itemBuilder: (context, index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount:matchQuery.length,
        itemBuilder: (context, index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }
}

class SearchQue extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text("History of Questions")),
    );
  }
}

class SearchUsers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text('History of Users')),
    );
  }
}