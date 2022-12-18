import 'dart:convert';

class GetNow {
  bool autoAcceptOrder;
  List<dynamic> siteOptions;

  GetNow({
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

  factory GetNow.fromMap(Map<String, dynamic> map) {
    return GetNow(
      autoAcceptOrder: map["autoAcceptOrder"] ?? false,
      siteOptions: List<dynamic>.from(map["siteOptions"] ?? <dynamic>[]),
    );
  }

  factory GetNow.fromJson(String json) => GetNow.fromMap(jsonDecode(json));

  @override
  String toString() => 'GetNow(autoAcceptOrder: $autoAcceptOrder, siteOptions: $siteOptions)';
}
