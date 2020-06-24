import './Forma.dart';
import 'dart:math';

class Circulo extends Forma {
  double _raio;

  get Raio => _raio;
  set Raio(double valor) => _raio = valor ?? 0;

  // Contrutor(es)
  Circulo({int cor, double raio}) : super(cor: cor) {
    Raio = raio;
  }

  Circulo.addObject(Circulo c) : super(cor: c.Cor) {
    Raio = c.Raio;
  }

  @override
  int numLados() => 0;
  @override
  double perimetro() => 2 * pi * Raio;
  @override
  double area() => pi * Raio * Raio;
  @override
  String toString() => "Circulo -> cor : $Cor, $Raio de raio";
  @override
  Circulo clone() => Circulo(cor: Cor, raio: Raio);
}
