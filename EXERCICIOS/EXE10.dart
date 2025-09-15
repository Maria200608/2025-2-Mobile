import 'dart:io';
import 'dart:math';

void main (){
  int n1;
  Random random = Random();
  int aleatorio = random.nextInt(100) + 1;

  print("O programa gerou um número aleatorio de 1 a 100.");

  do{
    print("Qual número que você acha que é: ");
    String? inputN1 = stdin.readLineSync();
     n1 = int.tryParse(inputN1!) ?? 0;

    if (aleatorio > n1){
      print("Você errou! Uma dica, O número do computador é maior.");
      print("Tenta denovo parceiro.");
    }
    else if(aleatorio < n1){
      print("Você errou! Uma dica, O número do computador é menor.");
      print("Tenta denovo parceiro.");
    }
  }while(n1 != aleatorio);
  print("Você acertou! O número certo é $aleatorio.");
}