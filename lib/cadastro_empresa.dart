import 'package:collection/collection.dart';

import 'package:desafio_aula5/cli_input_usuario.dart';
import 'package:desafio_aula5/models/empresa.dart';

class CadastroEmpresa {
  List<Empresa> listaEmpresas = [];

  void cadastrarEmpresa() {
    CliInputUsuario.informarRazaoSocial();
    CliInputUsuario.informarNomeFantasia();
    CliInputUsuario.informarCnpj();
    CliInputUsuario.informarLogradouro();
    CliInputUsuario.informarNumero();
    CliInputUsuario.informarComplemento();
    CliInputUsuario.informarBairro();
    CliInputUsuario.informarEstado();
    CliInputUsuario.informarCep();
    CliInputUsuario.informarTelefone();
    CliInputUsuario.informarNomeSocio();
    CliInputUsuario.informarCPFSocio();
    CliInputUsuario.informarLogradouroSocio();
    CliInputUsuario.informarNumeroSocio();
    CliInputUsuario.informarComplementoSocio();
    CliInputUsuario.informarBairroSocio();
    CliInputUsuario.informarEstadoSocio();
    CliInputUsuario.informarCepSocio();
    CliInputUsuario.informarSucessoCadastro();
    listaEmpresas.add(CliInputUsuario.visualizarEmpresaCadastrada());
  }

  void pesquisarEmpresaCnpj() {
    final string1 = CliInputUsuario.pesquisarEmpresaCnpj();
    final cnpj =
        listaEmpresas.firstWhereOrNull((empresa) => empresa.cnpj == string1);
    print(cnpj);
  }

  void pesquisarEmpresaCpfSocio() {
    final string2 = CliInputUsuario.pesquisarEmpresaCpfSocio();
    final cpf = listaEmpresas.firstWhereOrNull(
        (cpfSocio) => cpfSocio.socioPessoaFisica.cpf == string2);
    print(cpf);
  }

  void listarEmpresasOrdemAlfabetica() {
    listaEmpresas.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
    print(listaEmpresas);
  }

  void excluirEmpresasById() {
    final idEmpresa = CliInputUsuario.excluirEmpresasById();
    listaEmpresas.removeWhere((empresa) => empresa.id == idEmpresa);
    print(listaEmpresas);
  }
}
