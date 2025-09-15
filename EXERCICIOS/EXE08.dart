import 'dart:io';

void main(){
   double lado1, lado2, lado3;

   print("Digite o primeiro lado do triângulo: ");
     String? inputLado1 = stdin.readLineSync();
     lado1 = double.tryParse(inputLado1!) ?? 0;

     print("Digite o segundo lado do triângulo: ");
     String? inputLado2 = stdin.readLineSync();
     lado2 = double.tryParse(inputLado2!) ?? 0;

     print("Digite o terceiro lado do triângulo: ");
     String? inputLado3 = stdin.readLineSync();
     lado3 = double.tryParse(inputLado3!) ?? 0;

     if ( lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1){
        if(lado1 == lado2 && lado1 == lado3){
          print("Este triângulo é Equilátero (todos os lados iguais).");
        }
        else if(lado1 == lado2 || lado1 == lado3 || lado2 == lado3){
          print("Este triângulo é Isósceles (dois lados iguais).");
        }
        else{
          print("Este triângulo é Escaleno (todos os lados diferentes).");
        }
     }
     else{
      print("Estes valores não forma um triângulo!");
     }
}