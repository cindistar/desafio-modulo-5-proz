import 'dart:io';
import 'package:desafio_aula5/cadastro_empresa.dart';

final cadastro = CadastroEmpresa();

void main() {
  void mostrarMenu() {
    print(
        '''
  Informe a opção desejada:
  1 - Cadastrar uma nova empresa
  2 - Buscar Empresa cadastrada por CNPJ;
  3 - Buscar Empresa por CPF do Sócio;
  4 - Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);
  5 - Excluir uma empresa (por ID);
  6 - Ver menu de opções novamente;
  7 - Sair. 
  ''');
  }

  mostrarMenu();
  int input = int.parse(stdin.readLineSync()!);
  while (input != 7) {
    switch (input) {
      case 1:
        cadastro.cadastrarEmpresa();
        break;
      case 2:
        cadastro.pesquisarEmpresaCnpj();
        break;
      case 3:
        cadastro.pesquisarEmpresaCpfSocio();
        break;
      case 4:
        cadastro.listarEmpresasOrdemAlfabetica();
        break;
      case 5:
        cadastro.excluirEmpresasById();
        break;
      case 6:
        mostrarMenu();
        break;
      case 7:
        exit(7);
      default:
        print('Aperte 6 para o menu ou 7 para sair');
        input = int.parse(stdin.readLineSync()!);
    }
    print('Aperte 6 para o menu ou 7 para sair');
    input = int.parse(stdin.readLineSync()!);
  }
  while (input != 7) {
    {}
  }
}
