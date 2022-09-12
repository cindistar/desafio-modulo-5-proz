import 'package:desafio_aula5/models/endereco.dart';
import 'package:desafio_aula5/resources/formatacao_strings.dart';

class SocioPessoaFisica {
  final String nome;
  final String cpf;
  final Endereco endereco;

  SocioPessoaFisica({
    required this.nome,
    required this.cpf,
    required this.endereco,
  });

  @override
  String toString() {
    return '''CPF: ${FormatacaoStrings.formatarCpf(cpf)}
    Nome Completo: $nome 
    Endereço: $endereco
    ''';
  }
}
