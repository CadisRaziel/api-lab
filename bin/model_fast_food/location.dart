import 'dart:convert';

class Location {
  String type;
  List<double> coordinates;

  Location({
    required this.type,
    required this.coordinates,
  });

  Map<String, dynamic> toMap() {
    return {
      "type": type,
      "coordinates": coordinates,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      type: map["type"] ?? "",
      coordinates: List<double>.from(map["coordinates"] ?? <double>[]),
    );
  }

  factory Location.fromJson(String json) => Location.fromMap(jsonDecode(json));

  

  @override
  String toString() => 'Location(type: $type, coordinates: $coordinates)';
}
