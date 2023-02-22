class UserModel {
  UserModel({
      this.uId, 
      this.username, 
      this.uFullname, 
      this.uEmail, 
      this.uPassword, 
      this.uPoints, 
      this.uRevenue, 
      this.uRank, 
      this.uStarcount, 
      this.uProfileurl, 
      this.uStatus,});

  UserModel.fromJson(dynamic json) {
    uId = json['u_id'];
    username = json['username'];
    uFullname = json['u_fullname'];
    uEmail = json['u_email'];
    uPassword = json['u_password'];
    uPoints = json['u_points'];
    uRevenue = json['u_revenue'];
    uRank = json['u_rank'];
    uStarcount = json['u_starcount'];
    uProfileurl = json['u_profileurl'];
    uStatus = json['u_status'];
  }
  int? uId;
  String? username;
  String? uFullname;
  String? uEmail;
  String? uPassword;
  int? uPoints;
  int? uRevenue;
  int? uRank;
  int? uStarcount;
  String? uProfileurl;
  int? uStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['u_id'] = uId;
    map['username'] = username;
    map['u_fullname'] = uFullname;
    map['u_email'] = uEmail;
    map['u_password'] = uPassword;
    map['u_points'] = uPoints;
    map['u_revenue'] = uRevenue;
    map['u_rank'] = uRank;
    map['u_starcount'] = uStarcount;
    map['u_profileurl'] = uProfileurl;
    map['u_status'] = uStatus;
    return map;
  }

}