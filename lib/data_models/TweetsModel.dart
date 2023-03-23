class TweetsModel {
  TweetsModel({
      this.tId,
      this.fullname,
      this.username,
      this.tTxt,
      this.tDateTime,
      this.tLikes,
      this.tComments,
      this.tUrl,
      this.isLiked,
  });

  TweetsModel.fromJson(dynamic json) {
    tId = json['t_id'];
    fullname = json['u_fullname'];
    username = json['username'];
    tTxt = json['t_txt'];
    tDateTime = json['t_datetime'];
    tLikes = json['t_likes'];
    tComments = json['t_comments'];
    tUrl = json['u_profileurl'];
    isLiked = json['is_liked'];
  }
  int? tId;
  String? fullname;
  String? username;
  String? tTxt;
  String? tDateTime;
  int? tLikes;
  int? tComments;
  String? tUrl;
  int? isLiked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['t_id'] = tId;
    map['u_fullname'] = fullname;
    map['username'] = username;
    map['t_txt'] = tTxt;
    map['t_datetime'] = tDateTime;
    map['t_likes'] = tLikes;
    map['t_comments'] = tComments;
    map['u_profileurl'] = tUrl;
    map['is_liked'] = isLiked;
    return map;
  }

}