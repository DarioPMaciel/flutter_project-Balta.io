import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("ADICIONE SEUS PRODUTOS");
    String? text = stdin.readLineSync();
    if (text == 'sair') {
      print("=== Terminou o Programa===");
      condicao = false;
    } else if (text == 'imprimir') {
      print(produtos);
      print("\n");
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H"); //comando para limpar a tela após item

    }
  }
}
