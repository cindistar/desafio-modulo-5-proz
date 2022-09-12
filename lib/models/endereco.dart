import 'package:desafio_aula5/resources/formatacao_strings.dart';

class Endereco {
  final String logradouro;
  final String numero;
  final String complemento;
  final String bairro;
  final String estado;
  final String cep;

  Endereco({
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.estado,
    required this.cep,
  });

  @override
  String toString() {
    return '''$logradouro, $numero, $complemento, $bairro/$estado, ${FormatacaoStrings.formatarCep(cep)}''';
  }
}
