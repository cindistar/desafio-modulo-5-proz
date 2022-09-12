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
    return '''$logradouro, $numero, $complemento, $bairro, $estado, $cep''';
  }

  String validarCep(int cepInfo) {
    final cepFinal = cepInfo.toString();
    if (cepFinal.length == 8) {
      return 'CEP válido';
    } else {
      return 'CEP inválido';
    }
  }

  String formatarCep(int cepNumber) {
    final cepInfo = cepNumber.toString().split('-');
    final cepFormatado =
        '${cepInfo[0].substring(0, 2)}.${cepInfo[0].substring(2, 5)}-${cepInfo[0].substring(5, 8)}';
    return cepFormatado;
    //44.427.308/0001-93
  }
}
