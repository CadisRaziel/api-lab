// enabled: true


import 'dart:convert';

class CustomersQueue {
  bool enabled;

  CustomersQueue({
    required this.enabled,
  });

  Map<String, dynamic> toMap(){
    return {
      "enabled": enabled,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory CustomersQueue.fromMap(Map<String, dynamic> map) {
    return CustomersQueue(
      enabled: map["enabled"] ?? false,
    );
  }

  factory CustomersQueue.fromJson(String json) => CustomersQueue.fromMap(jsonDecode(json));

  @override
  String toString() => 'CustomersQueue(enabled: $enabled)';
}
