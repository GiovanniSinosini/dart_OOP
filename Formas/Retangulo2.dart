import './Forma.dart';

class Retangulo extends Forma {
  double _largura;
  double _comprimento;

  get Largura => _largura;
  get Comprimento => _comprimento;

  set Largura(double valor) => _largura = valor ?? 0;
  set Comprimento(double valor) => _comprimento = valor ?? 0;

  // Contrutor(es)
  Retangulo({int cor, double largura, double comprimento}) : super(cor: cor) {
    Largura = largura;
    Comprimento = comprimento;
  }

  Retangulo.addObject(Retangulo r) : super(cor: r.Cor) {
    Largura = r.Largura;
    Comprimento = r.Comprimento;
  }

  @override
  int numLados() => 4;
  @override
  double perimetro() => 2 * (Largura + Comprimento);
  @override
  double area() => Largura * Comprimento;
  @override
  String toString() =>
      "Retangulo -> cor : $Cor, $Largura (L) x $Comprimento (C)";

  @override
  Retangulo clone() =>
      Retangulo(cor: Cor, largura: Largura, comprimento: Comprimento);
}
