import 'dart:io';
void main (){

     double nota1, nota2, media;

    print("Digite a primeira nota: ");
    String? inputNota1 = stdin.readLineSync();
    nota1 = double.tryParse(inputNota1!) ?? 0;

    print("Digite a segunda nota: ");
    String? inputNota2 = stdin.readLineSync();
    nota2 = double.tryParse(inputNota2!) ?? 0;
    
    media = nota1 + nota2 / 2;

   if ( media >= 7.0 ){
      print("Aprovado");
   }
   else if ( media >= 4.0 ){
    print("Recuperação");
   }
    else {
    print("Reprovado.");
    }
}