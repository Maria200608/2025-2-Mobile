import 'dart:io';

void main (){
  double salario;

  print("Digite o valor do seu salario mensal: ");
     String? inputSalario = stdin.readLineSync();
     salario = double.tryParse(inputSalario!) ?? 0;

  if (salario <= 1903.98){
    print("Você está isento do Imposto de renda");
  }
  else if (salario <= 2826.65){
    print("O valor a ser pago de IR é ${(salario * 0.075).toStringAsFixed(2)}");
  }
  else if ( salario <= 3751.05){
    print("O valor a ser pago de IR é ${(salario * 0.15).toStringAsFixed(2)}");
  }
  else if ( salario <= 4664.68 ){
    print("O valor a ser pago de IR é ${(salario * 0.225).toStringAsFixed(2)}");
  }
  else {
    print("O valor de Imposto de renda que você vai pagar é ${(salario * 0.275).toStringAsFixed(2)} .");
  }
  
}