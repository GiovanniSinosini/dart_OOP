import './Forma.dart';
import './Circulo.dart';
import './Retangulo2.dart';
import './Quadrado.dart';

void main() {
  // Criar várias formas
  Forma f1 = new Forma();
  Forma f2 = new Circulo(cor: 1, raio: 2.2);
  Forma f3 = new Quadrado(cor: 4, lado: 10);
  Forma f4 = new Retangulo(cor: 2, largura: 30, comprimento: 50);

  Circulo c1 = new Circulo(cor: 8, raio: 5.5);
  Quadrado q1 = new Quadrado(cor: 2, lado: 45);

  print("Lista de formas geométricas\n");
  print("${f1} \n\tNº de Lados ${f1.numLados()}\n\tArea: ${f1.area()}\n\tPerimetro: ${f1.perimetro()}");
  print("$f2 \n\tNº de Lados ${f2.numLados()}\n\tArea: ${f2.area()}\n\tPerimetro: ${f2.perimetro()}");
  print("$f3 \n\tNº de Lados ${f3.numLados()}\n\tArea: ${f3.area()}\n\tPerimetro: ${f3.perimetro()}");
  print("$f4 \n\tNº de Lados ${f4.numLados()}\n\tArea: ${f4.area()}\n\tPerimetro: ${f4.perimetro()}");
  print("$c1 \n\tNº de Lados ${c1.numLados()}\n\tArea: ${c1.area()}\n\tPerimetro: ${c1.perimetro()}");
  print("$q1 \n\tNº de Lados ${q1.numLados()}\n\tArea: ${q1.area()}\n\tPerimetro: ${q1.perimetro()}");
}
