import 'dart:convert';

import 'cards.dart';

class InRestaurant {
  List<dynamic> accepted;
  Cards cards;

  InRestaurant({
    required this.accepted,
    required this.cards,
  });

  Map<String, dynamic> toMap() {
    return {
      "accepted": accepted,
      "cards": cards,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory InRestaurant.fromMap(Map<String, dynamic> map) {
    return InRestaurant(
      accepted: List<dynamic>.from(map["accepted"] ?? <dynamic>[]),
      cards: Cards.fromMap(map["cards"] ?? <String,dynamic>{}),
    );
  }
  

  factory InRestaurant.fromJson(String json) => InRestaurant.fromMap(jsonDecode(json));

  @override
  String toString() => 'InRestaurant(accepted: $accepted, cards: $cards)';
}
