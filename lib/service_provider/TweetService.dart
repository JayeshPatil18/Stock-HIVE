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