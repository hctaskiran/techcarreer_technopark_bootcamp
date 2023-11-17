import 'dart:convert';

List<UserModel> userModelFromJson(String str) => 
List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

/*
Future<String> userModelToJson(List<UserModel> data) async => 
jsonEncode(List<dynamic>.from(data.map((x) => x)));
*/


class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json["id"],
      name: json["name"],
      userName: json["userName"],
      email: json["email"],
      address: json["address"],
      phone: json["phone"],
      website: json["website"],
      company: json["company"]);

  int id = 0;
  String name = "";
  String userName = "";
  String email = "";
  Address? address;
  String phone = "";
  String website = "";
  Company? company;
}

class Address {
  Address({required this.street, required this.suite, required this.zipcode, required this.geo});
  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suit"],
        zipcode: json["zipcode"],
        geo: json["geo"],
      );

  String street = "";
  String suite = "";
  String zipcode = "";
  Geo? geo;
}

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });
  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"], 
    lng: json["lng"]);

  String lat = "";
  String lng = "";
}

class Company {
  Company({required this.name, required this.catchPhrase, required this.bs});
  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["company"], 
    catchPhrase: json["catchPhrase"], 
    bs: json["bs"]);

  String name = "";
  String catchPhrase = "";
  String bs = "";
}
