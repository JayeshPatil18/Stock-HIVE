class TweetsModel {
  TweetsModel({
      this.username,
      this.tTxt, 
      this.tDate,});

  TweetsModel.fromJson(dynamic json) {
    username = json['username'];
    tTxt = json['t_txt'];
    tDate = json['t_date'];
  }
  String? username;
  String? tTxt;
  String? tDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['t_txt'] = tTxt;
    map['t_date'] = tDate;
    return map;
  }

}