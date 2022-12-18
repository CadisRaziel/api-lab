//como cursos é um array de OBJETOS, ele tem que ter uma classe só dele

import 'dart:convert';

class Cursos {
  int id;
  String nome;
  bool isAluno;

  Cursos({
    required this.id,
    required this.nome,
    required this.isAluno,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "isAluno": isAluno,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Cursos.fromMap(Map<String, dynamic> map) {
    return Cursos(
      id: map["id"] ?? 0,
      nome: map["nome"] ?? "",
      isAluno: map["isAluno"] ?? false,
    );
  }

  factory Cursos.fromJson(String json) => Cursos.fromMap(jsonDecode(json));

  //se eu nao colocar o toString() ao chamar ele vai dar 'instance of ...'
  @override
  String toString() => 'Cursos(id: $id, nome: $nome, isAluno: $isAluno)';
}
