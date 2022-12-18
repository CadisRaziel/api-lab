import 'repositories/alunos_repository.dart';
import 'repositories/restaurant_repository.dart';

void main() async {
  //pegando uma instancia do repository
  // final alunoRepository = AlunosRepository();
  final restaurantRepository = RestaurantRepository();

  // final alunos = await alunoRepository.buscarTodos();
  final restaurante = await restaurantRepository.buscarTodos();

  // print(alunos);

  print("============================================");
  print(restaurante);

  print("============================================");
  print(restaurante.first.service.delivery.provider);


  print("============================================");


  // final aluno = await alunoRepository.buscarPoriD(0);
  // print(aluno);

  print("============================================");
  // print("ID -> ${aluno.id}");
  // print("NOME -> ${aluno.nome}");
  // print("IDADE -> ${aluno.idade}");
  // print("ENDERECO -> ${aluno.endereco}");
  // print("NOME-CURSOS -> ${aluno.nomeCursos}");
  // print("CURSOS -> ${aluno.cursos}");

  print("============================================");
  // for (var curso in aluno.cursos) { 
  //   if(curso.isAluno){
  //     print("NOME CURSO: ${curso.nome}");
  //     print("È alunos?: ${(curso.isAluno ? "sim" : "não")}");
  //   }
  // }
}
