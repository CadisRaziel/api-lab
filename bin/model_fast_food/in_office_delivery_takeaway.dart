
import 'dart:convert';

class InOfficeDeliveryTakeaway {
  bool autoAcceptOrder;
  List<dynamic> siteOptions;

  InOfficeDeliveryTakeaway({
    required this.autoAcceptOrder,
    required this.siteOptions,
  });

  Map<String, dynamic> toMap() {
    return {
      "autoAcceptOrder": autoAcceptOrder,
      "siteOptions": siteOptions,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory InOfficeDeliveryTakeaway.fromMap(Map<String, dynamic> map) {
    return InOfficeDeliveryTakeaway(
      autoAcceptOrder: map["autoAcceptOrder"] ?? false,
      siteOptions: List<dynamic>.from(map["siteOptions"] ?? <dynamic>[]),
    );
  }

  factory InOfficeDeliveryTakeaway.fromJson(String json) => InOfficeDeliveryTakeaway.fromMap(jsonDecode(json));
  
}
