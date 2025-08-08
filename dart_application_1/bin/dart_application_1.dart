import 'package:dart_application_1/logic.dart' as dart_application_1;

void main(List<String> arguments) {

  // ---> WORKING WITH RECORDS
  // var pessoa = ('Adler', 'Coelho Santos', 30);
  // print('Nome: ${pessoa.$1}');
  // print('Sobrenome: ${pessoa.$2}');
  // print('Idade: ${pessoa.$3}');

  final (texto, numero) = dart_application_1.testeRecords(11);
  print('Resultado: $texto, $numero');

  // ---> WORKING WITH TEXTS

  // String texto1 = 'Adler';
  // String texto2 = 'Coelho Santos';

  // print(dart_application_1.concatenarNomes(texto1, texto2));
  // print('resultado concatenacao: ${dart_application_1.concatenarStrings(texto1, texto2)}!');


  // ---> WORKING WITH NUMBERS

  // int numero1 = 5;
  // int numero2 = 2;

  // double numero3 = 10.5;
  // double numero4 = 57.3;

  // print('resultado inteiro: ${dart_application_1.multiplicacaoNumeroInteiros(numero1, numero2)}!');
  // print('resultado decimal: ${dart_application_1.multiplicacaoNumerosDecimais(numero3, numero4)}!');
}
