class clientsrequestproperty {
  int? id;
  int? userId;
  String? userType;
  int? projectId;
  String? propertyType;
  String? size;
  String? bedrooms;
  int? terrace;
  String? price;
  String? floors;
  String? bathrooms;
  String? view;
  String? brokerCommission;
  int? timeline;
  String? createdAt;
  String? updatedAt;

  clientsrequestproperty(
      {this.id,
      this.userId,
      this.userType,
      this.projectId,
      this.propertyType,
      this.size,
      this.bedrooms,
      this.terrace,
      this.price,
      this.floors,
      this.bathrooms,
      this.view,
      this.brokerCommission,
      this.timeline,
      this.createdAt,
      this.updatedAt});

  clientsrequestproperty.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    userType = json['user_type'];
    projectId = json['project_id'];
    propertyType = json['property_type'];
    size = json['size'];
    bedrooms = json['bedrooms'];
    terrace = json['terrace'];
    price = json['price'];
    floors = json['floors'];
    bathrooms = json['bathrooms'];
    view = json['view'];
    brokerCommission = json['brokerCommission'];
    timeline = json['timeline'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['user_type'] = this.userType;
    data['project_id'] = this.projectId;
    data['property_type'] = this.propertyType;
    data['size'] = this.size;
    data['bedrooms'] = this.bedrooms;
    data['terrace'] = this.terrace;
    data['price'] = this.price;
    data['floors'] = this.floors;
    data['bathrooms'] = this.bathrooms;
    data['view'] = this.view;
    data['brokerCommission'] = this.brokerCommission;
    data['timeline'] = this.timeline;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
