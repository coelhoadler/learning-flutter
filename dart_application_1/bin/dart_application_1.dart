import 'package:dart_application_1/logic.dart' as dart_application_1;

void main(List<String> arguments) {

  int numero1 = 5;
  int numero2 = 2;

  double numero3 = 10.5;
  double numero4 = 57.3;

  print('resultado inteiro: ${dart_application_1.multiplicacaoNumeroInteiros(numero1, numero2)}!');
  print('resultado decimal: ${dart_application_1.multiplicacaoNumerosDecimais(numero3, numero4)}!');
}
