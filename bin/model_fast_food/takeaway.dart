// enabled: true,
// scheduleAheadMinutes: 2880,

import 'dart:convert';

import 'schedules.dart';

class Takeaway {
  bool enabled;
  int scheduleAheadMinutes;
  List<Schedules> schedules;

  Takeaway({
    required this.enabled,
    required this.scheduleAheadMinutes,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return {
      "enabled": enabled,
      "scheduleAheadMinutes": scheduleAheadMinutes,
      "schedules": schedules.map((schedules) => schedules.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Takeaway.fromMap(Map<String, dynamic> map) {
    return Takeaway(
      enabled: map["enabled"] ?? false,
      scheduleAheadMinutes: map["scheduleAheadMinutes"] ?? 0,
      schedules: map["schedules"]
              ?.map<Schedules>((schedules) => Schedules.fromMap(schedules))
              .toList() ??
          <Schedules>[], 
    );
  }

  factory Takeaway.fromJson(String json) => Takeaway.fromMap(jsonDecode(json));

  

  @override
  String toString() => 'Takeaway(enabled: $enabled, scheduleAheadMinutes: $scheduleAheadMinutes, schedules: $schedules)';
}
