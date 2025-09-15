import 'dart:io';
void main (){
  int caixa; 
  double saldo = 1000.0, saque, deposito;

  print("Digite 1 - Saldo. ");
  print("Digite 2 - Saque. ");
  print("Digite 3 - deposito. ");
  String? inputCaixa = stdin.readLineSync();
  caixa = int.tryParse(inputCaixa!) ?? 0;


  switch (caixa) {
  case 1:
    print("Seu saldo é $saldo.");
    break;
  case 2:
    print("Qual valor a ser sacado: ");
      String? inputSaque = stdin.readLineSync();
      saque = double.tryParse(inputSaque!) ?? 0;

    saldo = saldo - saque;
    print("Seu saldo atual é $saldo");
    break;
  case 3:
    print("Qual valor a ser depositado: ");
    String? inputDeposito = stdin.readLineSync();
  deposito = double.tryParse(inputDeposito!) ?? 0;

  saldo = saldo + deposito;
  print("Seu saldo atual é $saldo");
    break;
  default:
    print("Valor digitado invalido.");
}
}