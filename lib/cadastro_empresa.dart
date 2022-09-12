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
    final inputCnpjCli = CliInputUsuario.pesquisarEmpresaCnpj();
    final cnpj = listaEmpresas
        .firstWhereOrNull((empresa) => empresa.cnpj == inputCnpjCli);
    print(cnpj);
  }

  void pesquisarEmpresaCpfSocio() {
    final inputCpfCli = CliInputUsuario.pesquisarEmpresaCpfSocio();
    final cpf = listaEmpresas.firstWhereOrNull(
        (cpfSocio) => cpfSocio.socioPessoaFisica.cpf == inputCpfCli);
    print(cpf);
  }

  void listarEmpresasOrdemAlfabetica() {
    listaEmpresas.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
    print(listaEmpresas);
  }

  void excluirEmpresasId() {
    final idEmpresa = CliInputUsuario.excluirEmpresasId();
    listaEmpresas.removeWhere((empresa) => empresa.id == idEmpresa);
    print(listaEmpresas);
  }
}
