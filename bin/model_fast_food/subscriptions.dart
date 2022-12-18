import 'dart:convert';

class Subscriptions {
  bool wefood;

  Subscriptions({
    required this.wefood,
  });

  Map<String, dynamic> toMap() {
    return {
      "wefood": wefood,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Subscriptions.fromMap(Map<String, dynamic> map) {
    return Subscriptions(
      wefood: map["wefood"] ?? false,
    );
  }

  factory Subscriptions.fromJson(String json) =>
      Subscriptions.fromMap(jsonDecode(json));

  @override
  String toString() => 'Subscriptions(wefood: $wefood)';
}
