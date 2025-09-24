import 'dart.io';
import 'produto.dart';
import 'item_compra.dart';
import 'carrinho_compra.dart';

class PDVApp{
    Carrinho_Compra carrinho = Carrinho_compra ();
    void iniciar (){
        print('\n== SISTEMA DE PDV\n');
        print('Bem Vindo ao sistema!');

        bool continuar = true;

        while (continuar){
              print('\nDeseja adicionar um produto ao carrinho? (S/N)');
              String resposta  = stdin.readLineSync()? .toUpperCase() ?? 'n'

              if (resposta == 'S'){
                ItemCompra item = lerDadosCompra();
                carrinho.adicionarItem(item);
                print ( '\nProduto adicionado com Sucesso!');
           }else {
             continuar = false;
           }



        }

    }