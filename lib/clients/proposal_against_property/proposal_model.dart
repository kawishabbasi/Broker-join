class proposal {
  int? id;
  int? brokerId;
  int? propertyOwnerId;
  int? propertyId;
  int? timeline;
  int? commission;
  int? yourNetProfit;
  String? proposalDetails;
  String? accepted;
  String? updatedAt;
  String? createdAt;
  User? user;

  proposal(
      {this.id,
      this.brokerId,
      this.propertyOwnerId,
      this.propertyId,
      this.timeline,
      this.commission,
      this.yourNetProfit,
      this.proposalDetails,
      this.accepted,
      this.updatedAt,
      this.createdAt,
      this.user});

  proposal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brokerId = json['broker_id'];
    propertyOwnerId = json['property_owner_id'];
    propertyId = json['property_id'];
    timeline = json['timeline'];
    commission = json['commission'];
    yourNetProfit = json['your_net_profit'];
    proposalDetails = json['proposal_details'];
    accepted = json['accepted'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
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
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;

  User({this.id, this.name, this.email});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}
