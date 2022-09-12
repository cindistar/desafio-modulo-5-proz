import 'dart:io';

import 'package:desafio_aula5/models/empresa.dart';
import 'package:desafio_aula5/models/endereco.dart';
import 'package:desafio_aula5/models/socio_pessoa_fisica.dart';

class CliInputUsuario {
  static String razaoSocialCli = '';
  static String nomeFantasiaCli = '';
  static String cnpjCli = '';
  static String logradouroCli = '';
  static String numeroCli = '';
  static String complementoCli = '';
  static String bairroCli = '';
  static String estadoCli = '';
  static String cepCli = '';
  static String telefoneCli = '';
  static String nomeSocio = '';
  static String cpfSocio = '';
  static String logradouroSocio = '';
  static String numeroSocio = '';
  static String complementoSocio = '';
  static String bairroSocio = '';
  static String estadoSocio = '';
  static String cepSocio = '';

  static visualizarEmpresaCadastrada() {
    final empresa = Empresa(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      razaoSocial: razaoSocialCli,
      nomeFantasia: nomeFantasiaCli,
      cnpj: cnpjCli,
      endereco: Endereco(
        logradouro: logradouroCli,
        numero: numeroCli,
        complemento: complementoCli,
        bairro: bairroCli,
        estado: estadoCli,
        cep: cepCli,
      ),
      telefone: telefoneCli,
      horarioCadastro: DateTime.now(),
      socioPessoaFisica: SocioPessoaFisica(
        nome: nomeSocio,
        cpf: cpfSocio,
        endereco: Endereco(
          logradouro: logradouroSocio,
          numero: numeroSocio,
          complemento: complementoSocio,
          bairro: bairroSocio,
          estado: estadoSocio,
          cep: cepSocio,
        ),
      ),
    );
    return empresa;
  }

  static void informarRazaoSocial() {
    print('Informe a razão social: ');
    String razaoSocial = stdin.readLineSync()!;
    razaoSocialCli = razaoSocial;
  }

  static void informarNomeFantasia() {
    print('Informe o nome fantasia: ');
    String nomeFantasia = stdin.readLineSync()!;
    nomeFantasiaCli = nomeFantasia;
  }

  static void informarCnpj() {
    print('Informe o CNPJ: ');
    int cnpj = int.parse(stdin.readLineSync()!);
    final cnpjToString = cnpj.toString();
    cnpjCli = cnpjToString;
  }

  static void informarLogradouro() {
    print('Informe o logradouro: ');
    String logradouro = stdin.readLineSync()!;
    logradouroCli = logradouro;
  }

  static void informarNumero() {
    print('Informe o número: ');
    String numero = stdin.readLineSync()!;
    numeroCli = numero;
  }

  static void informarComplemento() {
    print('Informe o complemento: ');
    String complemento = stdin.readLineSync()!;
    complementoCli = complemento;
  }

  static void informarBairro() {
    print('Informe o bairro: ');
    String bairro = stdin.readLineSync()!;
    bairroCli = bairro;
  }

  static void informarEstado() {
    print('Informe o Estado: ');
    String estado = stdin.readLineSync()!;
    estadoCli = estado;
  }

  static void informarCep() {
    print('Informe o CEP: ');
    int cep = int.parse(stdin.readLineSync()!);
    final cepToString = cep.toString();
    cepCli = cepToString;
  }

  static void informarTelefone() {
    print('Informe o Telefone: ');
    int telefone = int.parse(stdin.readLineSync()!);
    final telefoneToString = telefone.toString();
    telefoneCli = telefoneToString;
  }

  static void informarNomeSocio() {
    print('Informe o nome do sócio pessoa física: ');
    String nomeSocioPessoaFisica = stdin.readLineSync()!;
    nomeSocio = nomeSocioPessoaFisica;
  }

  static void informarCPFSocio() {
    print('Informe o CPF do sócio pessoa física: ');
    int cpfSocioPessoaFisica = int.parse(stdin.readLineSync()!);
    String cpfSocioStringPF = cpfSocioPessoaFisica.toString();
    while (cpfSocioStringPF.length != 11) {
      print('CPF inválido!! Digite novamente!');
      cpfSocioPessoaFisica = int.parse(stdin.readLineSync()!);
      cpfSocioStringPF = cpfSocioPessoaFisica.toString();
    }
    cpfSocio = cpfSocioStringPF;
    print('CPF válido!!');
  }

  static void informarLogradouroSocio() {
    print('Informe o logradouro do sócio: ');
    String logradouroSocioPf = stdin.readLineSync()!;
    logradouroSocio = logradouroSocioPf;
  }

  static void informarNumeroSocio() {
    print('Informe o número do sócio: ');
    String numeroSocioPf = stdin.readLineSync()!;
    numeroSocio = numeroSocioPf;
  }

  static void informarComplementoSocio() {
    print('Informe o complemento do sócio: ');
    String complementoSocioPf = stdin.readLineSync()!;
    complementoSocio = complementoSocioPf;
  }

  static void informarBairroSocio() {
    print('Informe o bairro do sócio: ');
    String bairroSocioPf = stdin.readLineSync()!;
    bairroSocio = bairroSocioPf;
  }

  static void informarEstadoSocio() {
    print('Informe o estado em que reside o sócio: ');
    String estadoSocioPf = stdin.readLineSync()!;
    estadoSocio = estadoSocioPf;
  }

  static void informarCepSocio() {
    print('Informe o CEP do sócio: ');
    String cepSocioPf = stdin.readLineSync()!;
    cepSocio = cepSocioPf;
  }

  static void informarSucessoCadastro() {
    print('Empresa cadastrada com sucesso!');
    print(visualizarEmpresaCadastrada());
  }

  static String pesquisarEmpresaCnpj() {
    print('Informe o CNPJ que deseja pesquisar: ');
    int pesquisaCnpj = int.parse(stdin.readLineSync()!);
    final pesquisaCnpjToString = pesquisaCnpj.toString();
    return pesquisaCnpjToString;
  }

  static String pesquisarEmpresaCpfSocio() {
    print('Informe o CPF do sócio que deseja pesquisar: ');
    int pesquisaCpf = int.parse(stdin.readLineSync()!);
    final pesquisaCpfString = pesquisaCpf.toString();
    return pesquisaCpfString;
  }

  static String excluirEmpresasId() {
    print('Informe o id da empresa que deseja excluir: ');
    int empresaId = int.parse(stdin.readLineSync()!);
    final empresaIdString = empresaId.toString();
    return empresaIdString;
  }
}
