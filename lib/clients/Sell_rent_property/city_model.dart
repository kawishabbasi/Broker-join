class cities {
  int? id;
  String? title;
  String? updatedAt;
  String? createdAt;

  cities({this.id, this.title, this.updatedAt, this.createdAt});

  cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}
