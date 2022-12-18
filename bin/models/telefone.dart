import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  //Passo 1 da deserialização (toMap - toJson)

  //1º passo toMap -> Metodo que pega nosso objeto telefone e transforma em um Objeto Map<String, dynamic>
  //2º passo toJson -> Metodo que pega um Map<String, dynamic> e transforma em um json pelo pacote 'dart:convert' (jsonEncode) (vira uma string json)

  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  String toJson() => jsonEncode(toMap());

  //Passo 2 da deserialização
  //transformar uma string json em um objeto telefone (pega uma string de chave e valor e transforma em um objeto telefone)
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map["ddd"] ?? 0,
      telefone: map["telefone"] ?? '',
    );
  }

  //passo 1 da serialização
  //transformar um map para um json
  //no dio eu nao preciso criar esse passo pois ele ja faz isso pra nos automaticamente
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  //se eu nao colocar o toString() ao chamar ele vai dar 'instance of ...'
  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
