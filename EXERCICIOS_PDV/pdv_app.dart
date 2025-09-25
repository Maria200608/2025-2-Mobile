import 'dart:io';
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
        if(carrinho.estaVazio()){
            print('\nNenhum produto foi adicionado ao carrinho.');
            print('\nObrigado por usar o sistema PDV. ');
            }else{
                exibirResultado();
            }

            ItemCompra lerDadosCompra(){
                print('\n-- Adicionar Produto --');
                print('\nNome do produto:');

                String nome = stdin.readLineSync()? .toUpperCase() ?? ' ';

                double  valor = 0;
                bool valorValido - false;

                while (!valorValido){
                    print('\nValor unitário: ');
                    String nome = stdin.readLineSync()? .toUpperCase() ?? ' ';
                    valorUnitario = double.parse (imput.replaceALL(',','.'));
                    if (valorUnitario <= 0){
                        print('\nValor deve ser maior que zero.');
                    }else{
                        valorValido = true;

                    } 
                }

                int quantidade = 0;
                bool quantidadeValida = true;

                while (!quantidadeValida){
                    print('\nQuantidade:');
                String input = stdin.readLineSync()? .toUpperCase() ?? '0';
                quantidade = int.parse(input);
                if (quantidade <= 0){
                    print('\nErro: A quantidade deve ser maior que zero.');
                }else{
                    quantidadeValida = true;
                }
            }
             
             Produto produto = Produto(nome,valorUnitario);
             return ItemCompra(produto, quantidade);
            }
            void exibirResultado(){
                double valorFinal - carrinho.CalcularValorFinal();

                print('\n-- RESUMO DA COMPRA==');
                print('\nItens do carrinho');

                for(int i = 0; i < carrinho.itens.length;i++){
                    print('${i + 1}, $carrinho.itens[i]}');
                }

                print('\nTotal de itens: ${carrinho.quantidadeItens()}');
                print('\nValor total: R\$ ${total.toStringAsFixed(2)}');

                if(desconto > 0){
                    print('\nDesconto (10%): R $ ${desconto.toStringAsFixed(2)}');
                }else{
                    print('\nDesconto: R\$ 0.00');
                }

                print('\nValor final: R\ $ ${valorFinal.toStringAsFixed(2)}');
                print()
            }
        }
    }
