
import 'dart:convert';

import '../model_fast_food/docs.dart';
import '../models/alunos.dart';
import 'package:http/http.dart' as http;

class AlunosRepository {
 Future<List<Alunos>> buscarTodos() async {
    final alunosResponse = await http.get(Uri.parse("http://localhost:8080/alunos"));

    //conversão dos dados para um modelo (ele retorna um array de objetos como na api)
    
    //convertendo o json
    final alunosList = jsonDecode(alunosResponse.body);

    //Se fosse apenas 1 objeto eu poderia converter o json assim
    //porém a api me retorna uma lista com varios alunos
    //dessa forma abaixo nao consigo fazer loop
    //Alunos.fromJson(alunosList);


    //aqui eu quero transformar o map<String, dynamic> que veio do 'alunosList' em uma lista de alunos
    final todosAlunos = alunosList.map<Alunos>((alunoMap) {
      return Alunos.fromMap(alunoMap);
    }).toList();
    
    return todosAlunos;
    //ou poderia fazer direto assim \/
    //return alunosList.map<Alunos>((alunoMap) => Alunos.fromMap(alunoMap)).toList();
  }


  Future<Alunos> buscarPoriD(int id) async {
    final alunosResponse = await http.get(Uri.parse("http://localhost:8080/alunos/$id"));
  
    return Alunos.fromJson(alunosResponse.body);
  
  }   
}