import 'dart:io';
void main (){
  int cardapio; 

  print("Digite 1 - File de frango. ");
  print("Digite 2 - Macarrão. ");
  print("Digite 3 - Strognoff. ");
  print("Digite 4 - Bife acebolado. ");
  String? inputCardapio = stdin.readLineSync();
  cardapio = int.tryParse(inputCardapio!) ?? 0;


  switch (cardapio) {
  case 1:
    print("File de Frango, Valor a ser pago é 27.99.");
    break;
  case 2:
    print("Macarrão, Valor a ser pago é 25.99.");
    break;
  case 3:
    print("Strognoff, Valor a ser pago é 30.99.");
    break;
  case 4:
    print("Bife acebolado, Valor a ser pago é 27.99.");
    break;
  default:
    print("Valor digitado invalido.");
}
}