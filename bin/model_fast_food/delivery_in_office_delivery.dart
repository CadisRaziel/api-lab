
import 'dart:convert';

class DeliveryInOfficeDelivery {
  bool autoAcceptOrder;
  List<dynamic> siteOptions;

  DeliveryInOfficeDelivery({
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

  factory DeliveryInOfficeDelivery.fromMap(Map<String, dynamic> map) {
    return DeliveryInOfficeDelivery(
      autoAcceptOrder: map["autoAcceptOrder"] ?? false,
      siteOptions: List<dynamic>.from(map["siteOptions"] ?? <dynamic>[]),
    );
  }

  factory DeliveryInOfficeDelivery.fromJson(String json) => DeliveryInOfficeDelivery.fromMap(jsonDecode(json));

  @override
  String toString() => 'DeliveryInOfficeDelivery(autoAcceptOrder: $autoAcceptOrder, siteOptions: $siteOptions)';
}
