import 'dart:io';

void main() {
 
  stdout.write("Digite sua renda: ");
  double renda = double.parse(stdin.readLineSync()!);

  
  stdout.write("Digite seu saldo: ");
  double saldo = double.parse(stdin.readLineSync()!);

 
  if (renda > 60000 && saldo > 100000) {
    print("exclusive");
  } else if (renda > 30000) {
    print("select");
  } else if (renda > 5000) {
    print("vangogh");
  } else if (renda > 1400) {
    print("varejo");
  } else {
    print("não se enquadra em nenhuma categoria");
  }
}
