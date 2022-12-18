import 'dart:convert';

import 'in_restaurant.dart';

class PaymentsInfo {
  InRestaurant inRestaurant;

  PaymentsInfo({
    required this.inRestaurant,
  });

  Map<String, dynamic> toMap() {
    return {
      "inRestaurant": inRestaurant.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory PaymentsInfo.fromMap(Map<String, dynamic> map) {
    return PaymentsInfo(
      inRestaurant: InRestaurant.fromMap(map["inRestaurant"] ?? <String,dynamic>{}),
    );
  }

  factory PaymentsInfo.fromJson(String json) => PaymentsInfo.fromMap(jsonDecode(json));

  @override
  String toString() => 'PaymentsInfo(inRestaurant: $inRestaurant)';
}
