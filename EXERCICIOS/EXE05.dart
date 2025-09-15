import 'dart:io';
void main (){

  print("Digite seu nome de usuário: ");
  String? nomeUsuario = stdin.readLineSync();

  print("Por favor, digite sua senha: ");
  String? senha = stdin.readLineSync();

  if (nomeUsuario == 'admin' && senha == '1234'){
    print("Acesso concedido.");
  }
  else{
    print("Acesso negado.");
  }
}