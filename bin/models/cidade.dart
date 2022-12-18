import 'dart:convert';

class Cidade {
  int id;
  String nome;

  Cidade({
    required this.id,
    required this.nome,
  });

  //o toMap e toJson eu transformei a cidade em um objeto json
  //toMap e toJson é serialização

  Map<String, dynamic> toMap() {
    //tem que ter os atributos(nomes) iguais da api
    return {
      "id": id,
      "nome": nome,
    };
  }

  String toJson() => jsonEncode(toMap());

 //==================================================

  //os dois factory eu transformo uma string json em um objeto cidade
  //os dois factory é deserialização

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map["id"] ?? 0,
      nome: map["nome"] ?? "",
    );
  }

  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));

  //se eu nao colocar o toString() ao chamar ele vai dar 'instance of ...'
  @override
  String toString() => 'Cidade(id: $id, nome: $nome)';
}
