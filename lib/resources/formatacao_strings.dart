class FormatacaoStrings {
  static String formatarCnpj(int cnpjNumber) {
    final cnpjInfo = cnpjNumber.toString().split('-');
    final cnpjFormatado =
        '${cnpjInfo[0].substring(1, 3)}.${cnpjInfo[0].substring(2, 5)}.${cnpjInfo[0].substring(5, 8)}/${cnpjInfo[0].substring(8, 12)}-${cnpjInfo[0].substring(12, 14)}';
    return cnpjFormatado;
    //44.427.308/0001-93
  }

  static String formatarTelefone(int telefone) {
    final telefoneInfo = telefone.toString().split('-');
    final telefoneFormatado =
        '(${(telefoneInfo[0].substring(0, 2))}) ${(telefoneInfo[0].substring(2, 3))} ${(telefoneInfo[0].substring(3, 7))}-${(telefoneInfo[0].substring(7, 11))}';
    return telefoneFormatado;
    //(19) 9 8838-0630
  }
}
