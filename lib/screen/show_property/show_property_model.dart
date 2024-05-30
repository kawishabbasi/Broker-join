// class show_property {
//   int? id;
//   String? city;
//   String? district;
//   String? projectType;
//   String? projectName;
//   String? size;
//   String? floor;
//   String? bedrooms;
//   String? bathrooms;
//   String? terrace;
//   String? view;
//   String? streetWidth;
//   String? finishType;
//   String? yearBuilt;
//   String? patmentType;
//   int? price;
//   String? downPayment;
//   String? yearsInstallment;
//   String? yearlyInstallment;
//   String? quartlyInstallment;
//   String? deliveryPayment;
//   String? cashPrice;
//   String? description;
//   int? lat;
//   int? lng;
//   String? address;
//   String? parkingStore;
//   String? maintenanceDeposite;
//   int? clubFees;
//   String? createdAt;
//   String? updatedAt;

//   show_property(
//       {this.id,
//       this.city,
//       this.district,
//       this.projectType,
//       this.projectName,
//       this.size,
//       this.floor,
//       this.bedrooms,
//       this.bathrooms,
//       this.terrace,
//       this.view,
//       this.streetWidth,
//       this.finishType,
//       this.yearBuilt,
//       this.patmentType,
//       this.price,
//       this.downPayment,
//       this.yearsInstallment,
//       this.yearlyInstallment,
//       this.quartlyInstallment,
//       this.deliveryPayment,
//       this.cashPrice,
//       this.description,
//       this.lat,
//       this.lng,
//       this.address,
//       this.parkingStore,
//       this.maintenanceDeposite,
//       this.clubFees,
//       this.createdAt,
//       this.updatedAt});

//   show_property.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     city = json['city'];
//     district = json['district'];
//     projectType = json['project_type'];
//     projectName = json['project_name'];
//     size = json['size'];
//     floor = json['floor'];
//     bedrooms = json['bedrooms'];
//     bathrooms = json['bathrooms'];
//     terrace = json['terrace'];
//     view = json['view'];
//     streetWidth = json['street_width'];
//     finishType = json['finish_type'];
//     yearBuilt = json['year_built'];
//     patmentType = json['patment_type'];
//     price = json['price'];
//     downPayment = json['down_payment'];
//     yearsInstallment = json['years_installment'];
//     yearlyInstallment = json['yearly_installment'];
//     quartlyInstallment = json['quartly_installment'];
//     deliveryPayment = json['delivery_payment'];
//     cashPrice = json['cash_price'];
//     description = json['description'];
//     lat = json['lat'];
//     lng = json['lng'];
//     address = json['address'];
//     parkingStore = json['parking_store'];
//     maintenanceDeposite = json['maintenance_deposite'];
//     clubFees = json['club_fees'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['city'] = this.city;
//     data['district'] = this.district;
//     data['project_type'] = this.projectType;
//     data['project_name'] = this.projectName;
//     data['size'] = this.size;
//     data['floor'] = this.floor;
//     data['bedrooms'] = this.bedrooms;
//     data['bathrooms'] = this.bathrooms;
//     data['terrace'] = this.terrace;
//     data['view'] = this.view;
//     data['street_width'] = this.streetWidth;
//     data['finish_type'] = this.finishType;
//     data['year_built'] = this.yearBuilt;
//     data['patment_type'] = this.patmentType;
//     data['price'] = this.price;
//     data['down_payment'] = this.downPayment;
//     data['years_installment'] = this.yearsInstallment;
//     data['yearly_installment'] = this.yearlyInstallment;
//     data['quartly_installment'] = this.quartlyInstallment;
//     data['delivery_payment'] = this.deliveryPayment;
//     data['cash_price'] = this.cashPrice;
//     data['description'] = this.description;
//     data['lat'] = this.lat;
//     data['lng'] = this.lng;
//     data['address'] = this.address;
//     data['parking_store'] = this.parkingStore;
//     data['maintenance_deposite'] = this.maintenanceDeposite;
//     data['club_fees'] = this.clubFees;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
//----------------
class show_property {
  int? id;
  int? userId;
  String? userType;
  String? purpose;
  String? city;
  String? district;
  String? projectType;
  String? projectName;
  String? propertyType;
  String? size;
  String? floor;
  String? bedrooms;
  String? bathrooms;
  String? terrace;
  String? view;
  String? streetWidth;
  String? finishType;
  String? yearBuilt;
  String? paymentType;
  int? price;
  String? downPayment;
  String? yearsInstallment;
  String? yearlyInstallment;
  String? quartlyInstallment;
  String? deliveryPayment;
  String? cashPrice;
  String? description;
  num? lat;
  num? lng;
  String? address;
  String? parkingStore;
  String? maintenanceDeposite;
  int? clubFees;
  String? landSize;
  String? buildingSize;
  String? developer;
  String? owner;
  String? aboutDeveloper;
  String? previousWork;
  String? uniteType;
  String? projectFeatures;
  String? paymentTerms;
  String? video;
  String? projectFlyer;
  String? createdAt;
  String? updatedAt;

  show_property(
      {this.id,
      this.userId,
      this.userType,
      this.purpose,
      this.city,
      this.district,
      this.projectType,
      this.projectName,
      this.propertyType,
      this.size,
      this.floor,
      this.bedrooms,
      this.bathrooms,
      this.terrace,
      this.view,
      this.streetWidth,
      this.finishType,
      this.yearBuilt,
      this.paymentType,
      this.price,
      this.downPayment,
      this.yearsInstallment,
      this.yearlyInstallment,
      this.quartlyInstallment,
      this.deliveryPayment,
      this.cashPrice,
      this.description,
      this.lat,
      this.lng,
      this.address,
      this.parkingStore,
      this.maintenanceDeposite,
      this.clubFees,
      this.landSize,
      this.buildingSize,
      this.developer,
      this.owner,
      this.aboutDeveloper,
      this.previousWork,
      this.uniteType,
      this.projectFeatures,
      this.paymentTerms,
      this.video,
      this.projectFlyer,
      this.createdAt,
      this.updatedAt});

  show_property.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    userType = json['user_type'];
    purpose = json['purpose'];
    city = json['city'];
    district = json['district'];
    projectType = json['project_type'];
    projectName = json['project_name'];
    propertyType = json['property_type'];
    size = json['size'];
    floor = json['floor'];
    bedrooms = json['bedrooms'];
    bathrooms = json['bathrooms'];
    terrace = json['terrace'];
    view = json['view'];
    streetWidth = json['street_width'];
    finishType = json['finish_type'];
    yearBuilt = json['year_built'];
    paymentType = json['payment_type'];
    price = json['price'];
    downPayment = json['down_payment'];
    yearsInstallment = json['years_installment'];
    yearlyInstallment = json['yearly_installment'];
    quartlyInstallment = json['quartly_installment'];
    deliveryPayment = json['delivery_payment'];
    cashPrice = json['cash_price'];
    description = json['description'];
    lat = json['lat'];
    lng = json['lng'];
    address = json['address'];
    parkingStore = json['parking_store'];
    maintenanceDeposite = json['maintenance_deposite'];
    clubFees = json['club_fees'];
    landSize = json['land_size'];
    buildingSize = json['building_size'];
    developer = json['developer'];
    owner = json['owner'];
    aboutDeveloper = json['about_developer'];
    previousWork = json['previous_work'];
    uniteType = json['unite_type'];
    projectFeatures = json['project_features'];
    paymentTerms = json['payment_terms'];
    video = json['video'];
    projectFlyer = json['project_flyer'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['user_type'] = this.userType;
    data['purpose'] = this.purpose;
    data['city'] = this.city;
    data['district'] = this.district;
    data['project_type'] = this.projectType;
    data['project_name'] = this.projectName;
    data['property_type'] = this.propertyType;
    data['size'] = this.size;
    data['floor'] = this.floor;
    data['bedrooms'] = this.bedrooms;
    data['bathrooms'] = this.bathrooms;
    data['terrace'] = this.terrace;
    data['view'] = this.view;
    data['street_width'] = this.streetWidth;
    data['finish_type'] = this.finishType;
    data['year_built'] = this.yearBuilt;
    data['payment_type'] = this.paymentType;
    data['price'] = this.price;
    data['down_payment'] = this.downPayment;
    data['years_installment'] = this.yearsInstallment;
    data['yearly_installment'] = this.yearlyInstallment;
    data['quartly_installment'] = this.quartlyInstallment;
    data['delivery_payment'] = this.deliveryPayment;
    data['cash_price'] = this.cashPrice;
    data['description'] = this.description;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['address'] = this.address;
    data['parking_store'] = this.parkingStore;
    data['maintenance_deposite'] = this.maintenanceDeposite;
    data['club_fees'] = this.clubFees;
    data['land_size'] = this.landSize;
    data['building_size'] = this.buildingSize;
    data['developer'] = this.developer;
    data['owner'] = this.owner;
    data['about_developer'] = this.aboutDeveloper;
    data['previous_work'] = this.previousWork;
    data['unite_type'] = this.uniteType;
    data['project_features'] = this.projectFeatures;
    data['payment_terms'] = this.paymentTerms;
    data['video'] = this.video;
    data['project_flyer'] = this.projectFlyer;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
