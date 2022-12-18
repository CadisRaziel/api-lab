//sempre criar uma classe separada para quando for objeto ou array de objeto
//quando for atributo simples chave e valor ou lista pode fazer tudo na mesma classe

//ALUNO È NOSSA CLASSE PRINCIAL (A PRIMEIRA DA API, O RESTANTE VEM TUDO DENTRO DELA)
import 'dart:convert';

import 'cursos.dart';
import 'endereco.dart';

class Alunos {
  int id;
  String nome;
  int? idade;
  List<String>
      nomeCursos; //quando é apenas uma lista não precisamos criar uma classe a parte pra ela !!
  List<Cursos>
      cursos; //quando é um array de OBJETOS precisamos criar um modelo a parte pra ele
  Endereco endereco;

  Alunos(
      {required this.id,
      required this.nome,
      this.idade,
      required this.nomeCursos,
      required this.cursos,
      required this.endereco});

  Map<String, dynamic> toMap() {
    //como idade pode ser null, temos que modificar o toMap
    final map = <String, dynamic>{
      "id": id,
      "nome": nome,
      //"idade": idade, -> com isso não colocamos a idade aqui !
      "nomeCursos": nomeCursos, //um array simples eu jogo direto aqui
      "cursos": cursos
          .map((curso) => curso.toMap())
          .toList(), //o cursos por ser um objeto dentro de uma list precisamos transformar em map para acessar o toMap dele
      "endereco": endereco.toMap()
    };

    //agora como a idade pode vir nulla, eu posso fazer uma condição aqui
    //se tiver idade, ele atribui a idade, caso contrario deixa null
    if (idade != null) {
      map["idade"] = idade;
    }

    return map;
  }

  String toJson() => jsonEncode(toMap());

  factory Alunos.fromMap(Map<String, dynamic> map) {
    return Alunos(
      id: map["id"] ?? 0,
      nome: map["nome"] ?? "",
      idade: map[
          "idade"], //como eu ja fiz condição dele, não preciso tratar o nullo aqui
      nomeCursos: List<String>.from(map["nomeCursos"] ??
          <String>[]), //1 forma que podemos converter uma lista simples
      //nomeCursos: map["nomeCursos"].cast<String>(), //2 forma menos comum de se ver porém com o mesmo resultado que o de cima
      cursos: map["cursos"]
              ?.map<Cursos>((cursoMap) => Cursos.fromMap(cursoMap))
              .toList() ??
          <Cursos>[], //como o cursos é uma lista de objetos, a gente converte ele dessa forma
      endereco: Endereco.fromMap(map["endereco"] ?? <String, dynamic>{}),
    );
  }

  factory Alunos.fromJson(String json) => Alunos.fromMap(jsonDecode(json));



  //se eu nao colocar o toString() ao chamar ele vai dar 'instance of ...'
  @override
  String toString() {
    return 'Alunos(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, cursos: $cursos, endereco: $endereco,)';
  }
}
