class TweetsModel {
  TweetsModel({
      this.username,
      this.tTxt, 
      this.tDateTime,});

  TweetsModel.fromJson(dynamic json) {
    username = json['username'];
    tTxt = json['t_txt'];
    tDateTime = json['t_datetime'];
  }
  String? username;
  String? tTxt;
  String? tDateTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['t_txt'] = tTxt;
    map['t_datetime'] = tDateTime;
    return map;
  }

}