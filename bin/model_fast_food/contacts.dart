
import 'dart:convert';

class Contacts {
  String email;
  String phoneNumber;

  Contacts({
    required this.email,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap(){
    return {
      "email": email,
      "phoneNumber": phoneNumber,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Contacts.fromMap(Map<String, dynamic> map) {
    return Contacts(
      email: map["email"] ?? "",
      phoneNumber: map["phoneNumber"] ?? "",
    );
  }

  factory Contacts.fromJson(String json) => Contacts.fromMap(jsonDecode(json));

  
  

  @override
  String toString() => 'Contacts(email: $email, phoneNumber: $phoneNumber)';
}
