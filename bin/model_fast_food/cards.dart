import 'dart:convert';

class Cards {
  List<dynamic> method;
  List<dynamic> authorizers;

  Cards({
    required this.method,
    required this.authorizers,
  });

  Map<String, dynamic> toMap() {
    return {
      "method": method,
      "authorizers": authorizers,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Cards.fromMap(Map<String, dynamic> map) {
    return Cards(
      method: List<dynamic>.from(map["method"] ?? <dynamic>[]),
      authorizers: List<dynamic>.from(map["authorizers"] ?? <dynamic>[]),
    );
  }

  factory Cards.fromJson(String json) => Cards.fromMap(jsonDecode(json));

  @override
  String toString() => 'Cards(method: $method, authorizers: $authorizers)';
}
