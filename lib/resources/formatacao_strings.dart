class FormatacaoStrings {
  static String formatarCnpj(String cnpjInput) {
    final cnpj = cnpjInput.split('-');
    final cnpjFormatado =
        '${cnpj[0].substring(0, 2)}.${cnpj[0].substring(2, 5)}.${cnpj[0].substring(5, 8)}/${cnpj[0].substring(8, 12)}-${cnpj[0].substring(12, 14)}';
    return cnpjFormatado;
    //44.427.308/0001-93
  }

  static String formatarTelefone(String telefoneInput) {
    final telefone = telefoneInput.split('-');
    final telefoneFormatado =
        '(${(telefone[0].substring(0, 2))}) ${(telefone[0].substring(3, 4))} ${(telefone[0].substring(3, 7))}-${(telefone[0].substring(7, 11))}';
    return telefoneFormatado;
    //(19) 9 8838-0630
  }

  static String formatarCpf(String cpfInput) {
    final cpf = cpfInput.split('-');
    final cpfFormatado =
        '${(cpf[0].substring(0, 3))}.${(cpf[0].substring(3, 6))}.${(cpf[0].substring(6, 9))}-${(cpf[0].substring(9, 11))}';
    return cpfFormatado;
    //419.734.100-87
  }

   static String formatarCep(String cepInput) {
    final cep = cepInput.split('-');
    final cepFormatado =
        '${cep[0].substring(0, 2)}.${cep[0].substring(2, 5)}-${cep[0].substring(5, 8)}';
    return cepFormatado;
    //13.412-233
  }
}
