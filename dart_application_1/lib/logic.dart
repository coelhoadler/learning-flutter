int multiplicacaoNumeroInteiros(int numero1, int numero2) {
  return numero1 * numero2;
}

double multiplicacaoNumerosDecimais(double numero1, double numero2) {
  return numero1 * numero2;
}

String concatenarNomes(String nome, String sobrenome) {
  return '$nome $sobrenome';
}

(String, int) testeRecords(int numero) {
  if (numero % 2 == 0) {
    return ('par', numero);
  }

  return ('impar', numero);
}