import './Forma.dart';

class Quadrado extends Forma {
  double _lado;

  get Lado => _lado;
  set Lado(double valor) => _lado = valor ?? 0;

  // Contrutor(es)
  Quadrado({int cor, double lado}) : super(cor: cor) {
    Lado = lado;
  }

  Quadrado.addObject(Quadrado q) : super(cor: q.Cor) {
    Lado = q.Lado;
  }

  @override
  int numLados() => 4;
  @override
  double perimetro() => 4 * Lado;
  @override
  double area() => Lado * Lado;
  @override
  String toString() => "Quadrado -> cor : $Cor, $Lado x $Lado";
  @override
  Quadrado clone() => Quadrado(cor: Cor, lado: Lado);
}
