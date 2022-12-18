// siteOptions: [ ]


import 'dart:convert';

class Scango {
  List<dynamic> siteOptions;

  Scango({
    required this.siteOptions,
  });


  Map<String, dynamic> toMap(){
    return {
      "siteOptions": siteOptions,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Scango.fromMap(Map<String, dynamic> map) {
    return Scango(
      siteOptions: List<dynamic>.from(map["siteOptions"] ?? <dynamic>[]),
      );
  }

  factory Scango.fromJson(String json) => Scango.fromMap(jsonDecode(json));

  @override
  String toString() => 'Scango(siteOptions: $siteOptions)';

  
}
