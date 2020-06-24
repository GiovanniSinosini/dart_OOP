import './Ponto2D.dart';
import './Segmento.dart';
import 'dart:io';

void main() {
  // criar ponto 1
  print("Inserir um ponto");
  Ponto2D ponto1 = inserirPonto();

  // criar ponto 2
  print("Inserir novo ponto");
  Ponto2D ponto2 = inserirPonto();

  print("Ponto 1 : $ponto1");
  print("Ponto 2 : $ponto2");

  // criar ponto 3
  Ponto2D ponto3 = Ponto2D();
  print("Ponto 3 : $ponto3");

  // altera ponto 3
  ponto3 = Ponto2D.createObject(ponto2);
  print("Ponto 3 : $ponto3");

  ponto3 = ponto1.clone();
  print("Ponto 3 : $ponto3");

  // incrementar
  ponto3.incCoord(ponto1.X, ponto1.Y);
  print("Ponto 3 : $ponto3");
  // decrementar
  ponto3.decCoord(ponto1.X, ponto1.Y);
  print("Ponto 3 : $ponto3");

  // soma pontos por coordenadas
  ponto3.somaCoordPonto(ponto1.X, ponto1.Y);
  print("Ponto 3 : $ponto3");

  // soma ponto a partir de outro ponto
  ponto3.somaPonto(ponto1);
  print("Ponto 3 : $ponto3");

  print(
      "O ponto 3 é simetrico? ${ponto3.eSimetrico() == true ? "Sim" : "Não"}");
  print(
      "As coordenadas do ponto são positivas? ${ponto3.coordPos() == true ? "Sim" : "Não"}");

  // testar segmentos
  Segmento segmento1 = Segmento();
  print(segmento1);

  Segmento segmento2 = Segmento(pi: ponto1, pf: ponto2);
  print(segmento2);
  print("Segmento 2 | Declive : ${segmento2.declive()}");
  print(segmento2.daDeclive());
}

Ponto2D inserirPonto() {
  var perg = 2, x = 0.0, y = 0.0;
  while (perg > 0) {
    if (perg == 2) {
      stdout.writeln("Introduza a coordenada X do Ponto2D -> ");
      x = double.tryParse(stdin.readLineSync());
      if (x != null) perg--;
    }
    if (perg == 1) {
      stdout.writeln("Introduza a coordenada Y do Ponto2D -> ");
      y = double.tryParse(stdin.readLineSync());
      if (y != null) perg--;
    }
  }
  return Ponto2D(x: x, y: y);
}
