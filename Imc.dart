import 'dart:io';

main() {
  calcDoIMC();
}

calcDoIMC() {
//pegar peso
  //pegar altura
  //realizar calculo
  //retornar IMC
  print("Digite seu peso: ");
  String? textPeso = stdin.readLineSync();
  double peso = double.parse(textPeso!);

  print("Digite sua altura: ");
  String? textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  double IMC = calculoIMC(peso, altura);
  imprimirResultado(IMC);
}

double calculoIMC(double peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(IMC) {
  print("-------------------------------");
  if (IMC < 18.5) {
    print("Abaixo do Peso");
  } else if (IMC > 18.5 && IMC < 24.9) {
    print("Peso Normal");
  } else if (IMC > 25 && IMC < 29.9) {
    print("Sobrepeso");
  } else if (IMC > 30 && IMC < 34.9) {
    print("Obesidade Grau 1");
  } else if (IMC > 35 && IMC < 39.9) {
    print("Obesidade Grau 2");
  } else {
    print("Obesidade Grau 3");
  }
  print(IMC.toStringAsFixed(2));
}
