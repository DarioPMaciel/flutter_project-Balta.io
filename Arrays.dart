import 'dart:io';

main() {
  /*String nome = "Dario";
  nome = "Bia";*/

/*
  var nome = [];

  bool condicao = true;

  while (condicao) {
    print("Digite um Nome: ");
    String? text = stdin.readLineSync();
    if (text == "sair") {
      print("=====PROGRAMA FINALIZADO=====");
      condicao = false;
    } else {
      nome.add(text);
    }
    print(nome);
    print('\n');
  }*/

  List<String> nomes = ["DARIO", "BIA", "ABADIA"];
  print(nomes);
  print(nomes.length);
  nomes.add("José");
  print(nomes);
  print(nomes.length);

  //imprimindo expecifico
  print(nomes[2]);
  //removendo nomes
  print(nomes);
  nomes.remove("BIA"); // ou  //nomes.removeAt(1);
  print(nomes);
  //concluido
}
