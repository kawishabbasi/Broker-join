// class property_deals {
//   int? remainingDays;
//   Proposals? proposals;

//   property_deals({this.remainingDays, this.proposals});

//   property_deals.fromJson(Map<String, dynamic> json) {
//     remainingDays = json['remainingDays'];
//     proposals = json['proposals'] != null
//         ? new Proposals.fromJson(json['proposals'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['remainingDays'] = this.remainingDays;
//     if (this.proposals != null) {
//       data['proposals'] = this.proposals!.toJson();
//     }
//     return data;
//   }
// }

// class Proposals {
//   int? id;
//   int? brokerId;
//   int? propertyOwnerId;
//   int? propertyId;
//   int? timeline;
//   int? commission;
//   int? yourNetProfit;
//   String? proposalDetails;
//   String? accepted;
//   String? dealEndDate;
//   String? updatedAt;
//   String? createdAt;
//   Property? property;

//   Proposals(
//       {this.id,
//       this.brokerId,
//       this.propertyOwnerId,
//       this.propertyId,
//       this.timeline,
//       this.commission,
//       this.yourNetProfit,
//       this.proposalDetails,
//       this.accepted,
//       this.dealEndDate,
//       this.updatedAt,
//       this.createdAt,
//       this.property});

//   Proposals.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     brokerId = json['broker_id'];
//     propertyOwnerId = json['property_owner_id'];
//     propertyId = json['property_id'];
//     timeline = json['timeline'];
//     commission = json['commission'];
//     yourNetProfit = json['your_net_profit'];
//     proposalDetails = json['proposal_details'];
//     accepted = json['accepted'];
//     dealEndDate = json['deal_end_date'];
//     updatedAt = json['updated_at'];
//     createdAt = json['created_at'];
//     property = json['property'] != null
//         ? new Property.fromJson(json['property'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['broker_id'] = this.brokerId;
//     data['property_owner_id'] = this.propertyOwnerId;
//     data['property_id'] = this.propertyId;
//     data['timeline'] = this.timeline;
//     data['commission'] = this.commission;
//     data['your_net_profit'] = this.yourNetProfit;
//     data['proposal_details'] = this.proposalDetails;
//     data['accepted'] = this.accepted;
//     data['deal_end_date'] = this.dealEndDate;
//     data['updated_at'] = this.updatedAt;
//     data['created_at'] = this.createdAt;
//     if (this.property != null) {
//       data['property'] = this.property!.toJson();
//     }
//     return data;
//   }
// }

// class Property {
//   int? id;
//   int? userId;
//   String? userType;
//   int? projectId;
//   String? propertyType;
//   String? size;
//   String? bedrooms;
//   int? terrace;
//   String? price;
//   String? floors;
//   String? bathrooms;
//   String? view;
//   int? brokerCommission;
//   int? timeline;
//   String? createdAt;
//   String? updatedAt;

//   Property(
//       {this.id,
//       this.userId,
//       this.userType,
//       this.projectId,
//       this.propertyType,
//       this.size,
//       this.bedrooms,
//       this.terrace,
//       this.price,
//       this.floors,
//       this.bathrooms,
//       this.view,
//       this.brokerCommission,
//       this.timeline,
//       this.createdAt,
//       this.updatedAt});

//   Property.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     userId = json['user_id'];
//     userType = json['user_type'];
//     projectId = json['project_id'];
//     propertyType = json['property_type'];
//     size = json['size'];
//     bedrooms = json['bedrooms'];
//     terrace = json['terrace'];
//     price = json['price'];
//     floors = json['floors'];
//     bathrooms = json['bathrooms'];
//     view = json['view'];
//     brokerCommission = json['brokerCommission'];
//     timeline = json['timeline'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['user_id'] = this.userId;
//     data['user_type'] = this.userType;
//     data['project_id'] = this.projectId;
//     data['property_type'] = this.propertyType;
//     data['size'] = this.size;
//     data['bedrooms'] = this.bedrooms;
//     data['terrace'] = this.terrace;
//     data['price'] = this.price;
//     data['floors'] = this.floors;
//     data['bathrooms'] = this.bathrooms;
//     data['view'] = this.view;
//     data['brokerCommission'] = this.brokerCommission;
//     data['timeline'] = this.timeline;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
//--------------------------
class property_deals {
  int? remainingDaysPercentage;
  int? remainingDays;
  Proposals? proposals;

  property_deals(
      {this.remainingDaysPercentage, this.remainingDays, this.proposals});

  property_deals.fromJson(Map<String, dynamic> json) {
    remainingDaysPercentage = json['remainingDaysPercentage'];
    remainingDays = json['remainingDays'];
    proposals = json['proposals'] != null
        ? new Proposals.fromJson(json['proposals'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['remainingDaysPercentage'] = this.remainingDaysPercentage;
    data['remainingDays'] = this.remainingDays;
    if (this.proposals != null) {
      data['proposals'] = this.proposals!.toJson();
    }
    return data;
  }
}

class Proposals {
  int? id;
  int? brokerId;
  int? propertyOwnerId;
  int? propertyId;
  int? timeline;
  int? commission;
  int? yourNetProfit;
  String? proposalDetails;
  String? accepted;
  String? dealEndDate;
  String? updatedAt;
  String? createdAt;
  Property? property;

  Proposals(
      {this.id,
      this.brokerId,
      this.propertyOwnerId,
      this.propertyId,
      this.timeline,
      this.commission,
      this.yourNetProfit,
      this.proposalDetails,
      this.accepted,
      this.dealEndDate,
      this.updatedAt,
      this.createdAt,
      this.property});

  Proposals.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brokerId = json['broker_id'];
    propertyOwnerId = json['property_owner_id'];
    propertyId = json['property_id'];
    timeline = json['timeline'];
    commission = json['commission'];
    yourNetProfit = json['your_net_profit'];
    proposalDetails = json['proposal_details'];
    accepted = json['accepted'];
    dealEndDate = json['deal_end_date'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    property = json['property'] != null
        ? new Property.fromJson(json['property'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['broker_id'] = this.brokerId;
    data['property_owner_id'] = this.propertyOwnerId;
    data['property_id'] = this.propertyId;
    data['timeline'] = this.timeline;
    data['commission'] = this.commission;
    data['your_net_profit'] = this.yourNetProfit;
    data['proposal_details'] = this.proposalDetails;
    data['accepted'] = this.accepted;
    data['deal_end_date'] = this.dealEndDate;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    if (this.property != null) {
      data['property'] = this.property!.toJson();
    }
    return data;
  }
}

class Property {
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
  int? brokerCommission;
  int? timeline;
  String? createdAt;
  String? updatedAt;

  Property(
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

  Property.fromJson(Map<String, dynamic> json) {
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
