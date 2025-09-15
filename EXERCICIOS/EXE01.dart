import 'dart:io';
void main (){

     int idade;

    print("Por favor, digite sua idade:");
    String? input = stdin.readLineSync();
    idade = int.tryParse(input!) ?? 0;

   if ( idade >= 16 ){
      print("Você já pode votar! ");
   }
   else{
    print("Você não tem idade para votar.");
   }
     
}