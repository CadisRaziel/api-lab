import 'dart:convert';

import 'cidade.dart';
import 'telefone.dart';

//como o endereço abrange 'cidade e telefone' devemos chamar os dois aqui no endereço !!
class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco(
      {required this.rua,
      required this.numero,
      required this.cep,
      required this.cidade,
      required this.telefone});

  Map<String, dynamic> toMap() {
    return {
      "rua": rua,
      "numero": numero,
      "CEP": cep,
      "cidade": cidade
          .toMap(), //como eu ja fiz um map de string e dynamic no toMap da classe cidade, aqui eu nao preciso fazer outro, eu apenas chamo o 'toMap()'
      "telefone": telefone
          .toMap() //como eu ja fiz um map de string e dynamic no toMap da classe telefone, aqui eu nao preciso fazer outro, eu apenas chamo o 'toMap()'
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map["rua"] ?? "",
      numero: map["numero"] ?? 0,
      cep: map["CEP"] ?? "",
      cidade: Cidade.fromMap(map["cidade"] ?? <String,dynamic>{}),
      telefone: Telefone.fromMap(map["telefone"] ?? <String,dynamic>{}),
    );
  }

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));

  //se eu nao colocar o toString() ao chamar ele vai dar 'instance of ...'
  @override
  String toString() {
    return 'Endereco(rua: $rua, numero: $numero, cep: $cep, cidade: $cidade, telefone: $telefone)';
  }
}
