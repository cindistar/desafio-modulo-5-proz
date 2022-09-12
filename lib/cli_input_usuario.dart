import 'dart:io';

import 'package:desafio_aula5/models/empresa.dart';
import 'package:desafio_aula5/models/endereco.dart';
import 'package:desafio_aula5/models/socio_pessoa_fisica.dart';

class CliInputUsuario {
  static String razaoInfo = '';
  static String nomeFantasiaInfo = '';
  static String cnpjInfo = '';
  static String logradouroInfo = '';
  static String numeroInfo = '';
  static String complementoInfo = '';
  static String bairroInfo = '';
  static String estadoInfo = '';
  static String cepInfo = '';
  static String telefoneInfo = '';
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
      razaoSocial: razaoInfo,
      nomeFantasia: nomeFantasiaInfo,
      cnpj: cnpjInfo,
      endereco: Endereco(
        logradouro: logradouroInfo,
        numero: numeroInfo,
        complemento: complementoInfo,
        bairro: bairroInfo,
        estado: estadoInfo,
        cep: cepInfo,
      ),
      telefone: telefoneInfo,
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
    razaoInfo = razaoSocial;
  }

  static void informarNomeFantasia() {
    print('Informe o nome fantasia: ');
    String nomeFantasiaS = stdin.readLineSync()!;
    nomeFantasiaInfo = nomeFantasiaS;
  }

  static void informarCnpj() {
    print('Informe o CNPJ: ');
    int cnpj = int.parse(stdin.readLineSync()!);
    final cnpjString = cnpj.toString();
    cnpjInfo = cnpjString;
  }

  static void informarLogradouro() {
    print('Informe o logradouro: ');
    String logradouro = stdin.readLineSync()!;
    logradouroInfo = logradouro;
  }

  static void informarNumero() {
    print('Informe o número: ');
    String numero = stdin.readLineSync()!;
    numeroInfo = numero;
  }

  static void informarComplemento() {
    print('Informe o complemento: ');
    String complemento = stdin.readLineSync()!;
    complementoInfo = complemento;
  }

  static void informarBairro() {
    print('Informe o bairro: ');
    String bairro = stdin.readLineSync()!;
    bairroInfo = bairro;
  }

  static void informarEstado() {
    print('Informe o Estado: ');
    String estado = stdin.readLineSync()!;
    estadoInfo = estado;
  }

  static void informarCep() {
    print('Informe o CEP: ');
    int cep = int.parse(stdin.readLineSync()!);
    final cepString = cep.toString();
    cepInfo = cepString;
  }

  static void informarTelefone() {
    print('Informe o Telefone: ');
    int telefoneS = int.parse(stdin.readLineSync()!);
    final telefoneString = telefoneS.toString();
    telefoneInfo = telefoneString;
  }

  static void informarNomeSocio() {
    print('Informe o nome do sócio pessoa física: ');
    String nomeSocioPessoaFisica = stdin.readLineSync()!;
    nomeSocio = nomeSocioPessoaFisica;
  }

  static void informarCPFSocio() {
    print('Informe o CPF do sócio pessoa física: ');
    int cpfSocioPessoaFisica = int.parse(stdin.readLineSync()!);
    final cpfSocioStringPF = cpfSocioPessoaFisica.toString();
    if (cpfSocioStringPF.length == 11) {
      cpfSocio = cpfSocioStringPF;
      print('CPF válido!');
    } else {
      print('Inválido CPF! Digite novamente!');
      int cpfSocioPessoaFisica = int.parse(stdin.readLineSync()!);
      final cnpjSocioStringPF = cpfSocioPessoaFisica.toString();
      if (cnpjSocioStringPF.length == 11) {
        cpfSocio = cnpjSocioStringPF;
        print('CPF válido!');
      } else {
        return;
      }
    }
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
    final pesquisaCnpjString = pesquisaCnpj.toString();
    return pesquisaCnpjString;
  }

  static String pesquisarEmpresaCpfSocio() {
    print('Informe o CPF do sócio que deseja pesquisar: ');
    int pesquisaCpf = int.parse(stdin.readLineSync()!);
    final pesquisaCpfString = pesquisaCpf.toString();
    return pesquisaCpfString;
  }

  static String excluirEmpresasById() {
    print('Informe o id da empresa que deseja excluir: ');
    int empresaId = int.parse(stdin.readLineSync()!);
    final empresaIdString = empresaId.toString();
    return empresaIdString;
  }
}
