import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_prediction/main.dart';

Future<int> getTokenId() async {
  final prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString(SplashPageState.KEY_LOGIN_DETAILS);
  
  if(token != null){
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    int userId = decodedToken['id'];
    return userId;
  }

  return -1;
}

Future<String> getTokenUsername() async {
  final prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString(SplashPageState.KEY_LOGIN_DETAILS);
  
  if(token != null){
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    String userId = decodedToken['username'];
    return userId;
  }

  return "null";
}

Future<String> getTokenPhoneNo() async {
  final prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString(SplashPageState.KEY_LOGIN_DETAILS);
  
  if(token != null){
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    String userId = decodedToken['phoneNo'];
    return userId;
  }

  return "null";
}