import 'dart:io';
void main (){

     double desconto = 0.1;
     double compra, total;

    print("Por favor, digite o valor da compra: ");
    String? input = stdin.readLineSync();
    compra = double.tryParse(input!) ?? 0;

    total = compra - (compra * desconto);

   if ( compra >= 100.00 ){
      print("Você ganhou desconto, o total da sua compra é $total");
   }
   else{
    print("Você não tem desconto. Sua compra total é $compra");
   }
     
}