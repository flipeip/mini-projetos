import 'dart:convert';
import 'dart:math';

import 'caracteres.dart';

String gerarCaractereDeIndiceUtf8(final FaixaCaracteres faixa) {
  return utf8.decoder.convert([
    Random().nextInt((faixa.terminal - faixa.inicial) + 1) + faixa.inicial,
  ]);
}

String gerarSimboloEspecial() {
  return simbolosEspeciais[Random().nextInt(simbolosEspeciais.length)];
}

String gerarSenha(final int quantCaracteres) {
  var senha = '';

  for (var i = 0; i < quantCaracteres; i++) {
    senha += switch (Random.secure().nextInt(4)) {
      0 => gerarCaractereDeIndiceUtf8(letrasMinusculas),
      1 => gerarCaractereDeIndiceUtf8(letrasMaiusculas),
      2 => gerarCaractereDeIndiceUtf8(numeros),
      3 => gerarSimboloEspecial(),
      _ => throw Error(),
    };
  }

  return senha;
}
