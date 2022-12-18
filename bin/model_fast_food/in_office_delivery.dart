
import 'dart:convert';

import 'delivery_in_office_delivery.dart';
import 'get_now.dart';
import 'in_office_delivery_takeaway.dart';

class InOfficeDelivery {
  GetNow getNow;
  DeliveryInOfficeDelivery delivery;
  InOfficeDeliveryTakeaway takeaway;

  InOfficeDelivery({
    required this.getNow,
    required this.delivery,
    required this.takeaway,
  });

  Map<String, dynamic> toMap(){
    return {
      "getNow": getNow.toMap(),
      "delivery": delivery.toMap(),
      "takeaway": takeaway.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory InOfficeDelivery.fromMap(Map<String, dynamic> map) {
    return InOfficeDelivery(
      getNow: GetNow.fromMap(map["getNow"] ?? <String,dynamic>{}),
      delivery: DeliveryInOfficeDelivery.fromMap(map["delivery"] ?? <String,dynamic>{}),
      takeaway: InOfficeDeliveryTakeaway.fromMap(map["takeaway"] ?? <String,dynamic>{}),
    );
  }

  factory InOfficeDelivery.fromJson(String json) => InOfficeDelivery.fromMap(jsonDecode(json));
  

  @override
  String toString() => 'InOfficeDelivery(getNow: $getNow, delivery: $delivery)';
}
