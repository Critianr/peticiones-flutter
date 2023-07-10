class UserModel {
  UserModel({this.users, this.total, this.skip, this.limit});

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  int? limit;
  int? skip;
  int? total;
  List<Users>? users;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['skip'] = skip;
    data['limit'] = limit;
    return data;
  }
}

class Users {
  Users(
      {this.id,
      this.firstName,
      this.lastName,
      this.maidenName,
      this.age,
      this.gender,
      this.email,
      this.phone,
      this.username,
      this.password,
      this.birthDate,
      this.image,
      this.bloodGroup,
      this.height,
      this.weight,
      this.eyeColor,
      this.hair,
      this.domain,
      this.ip,
      this.address,
      this.macAddress,
      this.university,
      this.bank,
      this.company,
      this.ein,
      this.ssn,
      this.userAgent});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    maidenName = json['maidenName'];
 
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
 
  String? email;
  String? eyeColor;
  String? firstName;
  int? id;
  String? image;
  String? username;
 

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['phone'] = phone;
    data['username'] = username;
    return data;
  }
}

class Hair {
  Hair({this.color, this.type});

  Hair.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    type = json['type'];
  }

  String? color;
  String? type;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['type'] = type;
    return data;
  }
}

class Address {
  Address({this.address, this.city, this.coordinates, this.postalCode, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
    postalCode = json['postalCode'];
    state = json['state'];
  }

  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    return data;
  }
}



}
