
import 'dart:convert';

import '../model_fast_food/docs.dart';
import 'package:http/http.dart' as http;

class RestaurantRepository {
  Future<List<Docs>> buscarTodos() async {
    final restauranteResponse = await http.get(Uri.parse("http://localhost:8080/docs"));

    //conversão dos dados para um modelo (ele retorna um array de objetos como na api)
    
    //convertendo o json
    final restaurantList = jsonDecode(restauranteResponse.body);

    //Se fosse apenas 1 objeto eu poderia converter o json assim
    //porém a api me retorna uma lista com varios alunos
    //dessa forma abaixo nao consigo fazer loop
    //Alunos.fromJson(alunosList);


    //aqui eu quero transformar o map<String, dynamic> que veio do 'alunosList' em uma lista de alunos
    final todosRestaurantes = restaurantList.map<Docs>((restauranteMap) {
      return Docs.fromMap(restauranteMap);
    }).toList();
    
    return todosRestaurantes;
    //ou poderia fazer direto assim \/
    //return alunosList.map<Alunos>((alunoMap) => Alunos.fromMap(alunoMap)).toList();
  }
}