import 'package:desafio_aula5/models/endereco.dart';
import 'package:desafio_aula5/models/socio_pessoa_fisica.dart';
import 'package:desafio_aula5/resources/formatacao_strings.dart';

class Empresa {
  final String id;
  final String razaoSocial;
  final String nomeFantasia;
  final String cnpj;
  final DateTime horarioCadastro;
  final Endereco endereco;
  final String telefone;
  final SocioPessoaFisica socioPessoaFisica;

  Empresa({
    required this.id,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required this.endereco,
    required this.telefone,
    required this.horarioCadastro,
    required this.socioPessoaFisica,
  });

  factory Empresa.empty() {
    return Empresa(
        id: '',
        razaoSocial: '',
        nomeFantasia: '',
        cnpj: '',
        endereco: Endereco(
          bairro: '',
          cep: '',
          complemento: '',
          estado: '',
          logradouro: '',
          numero: '',
        ),
        telefone: '',
        horarioCadastro: DateTime.now(),
        socioPessoaFisica: SocioPessoaFisica(
            nome: '',
            cpf: '',
            endereco: Endereco(
              bairro: '',
              cep: '',
              complemento: '',
              estado: '',
              logradouro: '',
              numero: '',
            )));
  }

  @override
  String toString() {
    return '''

    ID: $id
    CNPJ: ${FormatacaoStrings.formatarCnpj(cnpj)} Data Cadastro: $horarioCadastro
    Razão Social: $razaoSocial
    Nome Fantasia: $nomeFantasia 
    Telefone: ${FormatacaoStrings.formatarTelefone(telefone)}
    Endereço: $endereco 
    Sócio: 
    $socioPessoaFisica''';
  }
}
