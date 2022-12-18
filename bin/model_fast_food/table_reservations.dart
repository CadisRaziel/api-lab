// enabled: true


import 'dart:convert';

class TableReservations {
  bool enabled;


  TableReservations({
    required this.enabled,
  });

  Map<String, dynamic> toMap(){
    return {
      "enabled": enabled,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory TableReservations.fromMap(Map<String, dynamic> map) {
    return TableReservations(
      enabled: map["enabled"] ?? false,
    );
  }

  factory TableReservations.fromJson(String json) => TableReservations.fromMap(jsonDecode(json));

  @override
  String toString() => 'TableReservations(enabled: $enabled)';
}
