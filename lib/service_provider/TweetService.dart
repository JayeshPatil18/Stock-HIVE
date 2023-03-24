import 'dart:convert';
import 'package:stock_prediction/data_models/TweetsModel.dart';

import '../main.dart';
import 'package:http/http.dart' as http;

Future<bool> updateLike(int t_id, String username) async{

  try{
    final url = Uri.parse('$globalApiUrl/tweets/like');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({
      't_id': t_id,
      'username': username,
    });
    final response = await http.post(url, headers: headers, body: body);
    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }catch(e){
    return false;
  }
}

Future<TweetsModel> getTweet(int t_id, String username) async{

  final response =
  await http.get(Uri.parse('$globalApiUrl/tweets/tweet?username=${username}&t_id=${t_id}'));
  var data = jsonDecode(response.body);
  List<TweetsModel>? tweet = [];
  if (response.statusCode == 200) {
    for (Map i in data) {
      tweet.add(TweetsModel.fromJson(i));
    }
  } else {
    tweet = null;
  }
  return tweet![0];
}