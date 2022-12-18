import 'dart:convert';

import 'address_info.dart';
import 'contacts.dart';
import 'currency_info.dart';
import 'image.dart';
import 'location.dart';
import 'payments_info.dart';
import 'services.dart';
import 'subscriptions.dart';

class Docs {
  Subscriptions subscriptions;
  Services service;
  PaymentsInfo paymentsInfo;
  AddressInfo addressInfo;
  Contacts contacts;
  Location location;
  Image image;
  List<dynamic> cuisines;
  List<dynamic> additionalInfo;
  String id;
  String name;
  String company;
  int capacity;
  String mealType;
  String createdAt;
  String updatedAt;
  int v;
  String currencyCode;
  String languageCode;
  String timezone;
  String languageInfo;
  CurrencyInfo currencyInfo;
  String countryCode;

  Docs({
    required this.subscriptions,
    required this.service,
    required this.paymentsInfo,
    required this.addressInfo,
    required this.contacts,
    required this.location,
    required this.image,
    required this.cuisines,
    required this.additionalInfo,
    required this.id,
    required this.name,
    required this.company,
    required this.capacity,
    required this.mealType,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.currencyCode,
    required this.languageCode,
    required this.timezone,
    required this.languageInfo,
    required this.currencyInfo,
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return {
      "subscriptions": subscriptions.toMap(),
      "services": service.toMap(),
      "paymentsInfo": paymentsInfo.toMap(),
      "addressInfo": addressInfo.toMap(),
      "contacts": contacts.toMap(),
      "location": location.toMap(),
      "Image": image.toMap(),
      "cuisines": cuisines,
      "additionalInfo": additionalInfo,
      "_id": id,
      "name": name,
      "company": company,
      "capacity": capacity,
      "mealType": mealType,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "__v": v,
      "currencyCode": currencyCode,
      "languageCode": languageCode,
      "timezone": timezone,
      "languageInfo": languageInfo,
      "currencyInfo": currencyInfo.toMap(),
      "countryCode": countryCode,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Docs.fromMap(Map<String, dynamic> map) {
    return Docs(
      subscriptions:
          Subscriptions.fromMap(map["subscriptions"] ?? <String, dynamic>{}),
      service: Services.fromMap(map["services"] ?? <String, dynamic>{}),
      paymentsInfo:
          PaymentsInfo.fromMap(map["paymentsInfo"] ?? <String, dynamic>{}),
      addressInfo:
          AddressInfo.fromMap(map["addressInfo"] ?? <String, dynamic>{}),
      contacts: Contacts.fromMap(map["contacts"] ?? <String, dynamic>{}),
      location: Location.fromMap(map["location"] ?? <String, dynamic>{}),
      image: Image.fromMap(map["image"] ?? <String, dynamic>{}),
      cuisines: List<dynamic>.from(map["cuisines"] ?? <dynamic>[]),
      additionalInfo: List<dynamic>.from(map["additionalInfo"] ?? <dynamic>[]),
      id: map["_id"] ?? "",
      name: map["name"] ?? "",
      company: map["company"] ?? "",
      capacity: map["capacity"] ?? 0,
      mealType: map["mealType"] ?? "",
      createdAt: map["createdAt"] ?? "",
      updatedAt: map["updatedAt"] ?? "",
      v: map["__v"] ?? 0,
      currencyCode: map["currencyCode"] ?? "",
      languageCode: map["languageCode"] ?? "",
      timezone: map["timezone"] ?? "",
      languageInfo: map["languageInfo"] ?? "",
      currencyInfo:
          CurrencyInfo.fromMap(map["currencyInfo"] ?? <String, dynamic>{}),
      countryCode: map["countryCode"] ?? "",
    );
  }

  factory Docs.fromJson(String json) => Docs.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Docs(subscriptions: $subscriptions, service: $service, paymentsInfo: $paymentsInfo, addressInfo: $addressInfo, contacts: $contacts, location: $location, image: $image, cuisines: $cuisines, additionalInfo: $additionalInfo, id: $id, name: $name, company: $company, capacity: $capacity, mealType: $mealType, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, currencyCode: $currencyCode, languageCode: $languageCode, timezone: $timezone, languageInfo: $languageInfo, currencyInfo: $currencyInfo, countryCode: $countryCode)';
  }
}
