import 'package:gerador_de_senhas/gerador.dart' as viper;

void main(List<String> arguments) {
  final quantidadeCaracteres =
      arguments.isNotEmpty ? int.parse(arguments[0]) : 8;

  String senha = viper.gerarSenha(quantidadeCaracteres);

  print('Senha gerada: $senha');
}
