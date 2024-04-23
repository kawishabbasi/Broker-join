class user_profile {
  String? email;
  String? phoneNo;

  user_profile({this.email, this.phoneNo});

  user_profile.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phoneNo = json['phone_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['phone_no'] = this.phoneNo;
    return data;
  }
}
