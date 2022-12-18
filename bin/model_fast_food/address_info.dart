
import 'dart:convert';

class AddressInfo {
  String address;
  String city;
  String country;

  AddressInfo({
    required this.address,
    required this.city,
    required this.country,
  });

  Map<String, dynamic> toMap(){
    return {
      "address": address,
      "city": city,
      "country": country,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory AddressInfo.fromMap(Map<String, dynamic> map) {
    return AddressInfo(
      address: map["address"] ?? "",
      city: map["city"] ?? "",
      country: map["country"] ?? "",
    );
  }

  factory AddressInfo.fromJson(String json) => AddressInfo.fromMap(jsonDecode(json));

  

  @override
  String toString() => 'AddressInfo(address: $address, city: $city, country: $country)';
}
