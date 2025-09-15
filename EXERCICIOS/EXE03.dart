import 'dart:io';
void main (){

     double peso;
     double altura, imc;

    print("Digite sua altura: ");
    String? inputAltura = stdin.readLineSync();
    altura = double.tryParse(inputAltura!) ?? 0;

    print("Digite seu peso: ");
    String? inputPeso = stdin.readLineSync();
    peso = double.tryParse(inputPeso !) ?? 0;
    
    imc = peso / (altura * altura);

   if ( imc >= 40.0 ){
      print("Obesidade grau 3");
   }
   else if ( imc >= 35.0 ){
    print("Obesidade grau 2");
   }
    else if ( imc >= 30.0 ){
    print("Obesidade grau 1");
   }
   else if ( imc >= 25.0 ){
    print("Sobrepeso");
   }
   else if ( imc >= 18.5 ){
    print("Peso normal");
   }
   else {
    print("Abaixo do peso");
   }
}