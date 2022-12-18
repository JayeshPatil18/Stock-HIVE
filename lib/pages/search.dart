import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      // appBar: AppBar(
      //   title: Text('Search'),
      //   actions: [
      //     IconButton(onPressed: (){
      //       showSearch(
      //           context: context,
      //           delegate: CustomSearch());
      //     }, icon: Icon(Icons.search))
      //   ],
      //   ),
      body: Center(
        child: Column(
          children: [
          ],
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
      }, icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return(
      IconButton(onPressed: (){
        close(context, null);
      }, icon: const Icon(Icons.arrow_back))
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