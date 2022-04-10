import 'dart:io';

List<String> produtos = []; //GLOBAL

main() {
  bool condicao = true;
  //List<String> produtos = []; //LOCAL (mas precisa passar o parametro 'produtos')
  while (condicao) {
    print("===ADICIONE SEUS PRODUTOS===");
    String? text = stdin.readLineSync();
    if (text == 'sair') {
      print("=== Terminou o Programa===");
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'remover') {
      remover();
      print("======ITEM REMOVIDO");
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H"); //comando para limpar a tela a
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

remover() {
  print("===Qual produto Remover===");
  imprimir();
  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
}
