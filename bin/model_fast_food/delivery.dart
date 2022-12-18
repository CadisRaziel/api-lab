// provider: "internal",
// enabled: true,
// scheduleAheadMinutes: 4320,


import 'dart:convert';

import 'schedules.dart';
import 'zones.dart';

class Delivery {
  String provider;
  bool enabled;
  int scheduleAheadMinutes;
  List<Schedules> schedules;
  List<Zones> zones;

  Delivery({
    required this.provider,
    required this.enabled,
    required this.scheduleAheadMinutes,
    required this.schedules,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return {
      "provider": provider,
      "enabled": enabled,
      "scheduleAheadMinutes": scheduleAheadMinutes,
      "schedules": schedules.map((schedules) => schedules.toMap()).toList(),
      "zones": zones.map((zones) => zones.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Delivery.fromMap(Map<String, dynamic> map) {
    return Delivery(
      provider: map["provider"] ?? "",
      enabled: map["enabled"] ?? false,
      scheduleAheadMinutes: map["scheduleAheadMinutes"] ?? 0,
      schedules: map["schedules"]
              ?.map<Schedules>((schedules) => Schedules.fromMap(schedules))
              .toList() ??
          <Schedules>[], 
          zones: map["zones"]
              ?.map<Zones>((zones) => Zones.fromMap(zones))
              .toList() ??
          <Zones>[], 
    );
  }

  factory Delivery.fromJson(String json) => Delivery.fromMap(jsonDecode(json));
  

 

  @override
  String toString() {
    return 'Delivery(provider: $provider, enabled: $enabled, scheduleAheadMinutes: $scheduleAheadMinutes, schedules: $schedules, zones: $zones)';
  }
}
