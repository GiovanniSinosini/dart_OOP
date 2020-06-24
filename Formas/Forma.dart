class Forma {
  // atributos
  int _cor;

  // getters and setters
  get Cor => _cor;
  set Cor(int valor) => _cor = valor ?? 0;

  // contrutor(es)
  Forma({int cor}) {
    Cor = cor;
  }

  Forma.addObject(Forma f) {
    Cor = f.Cor;
  }

  // metodos de instância
  Forma clone() => Forma(cor : Cor);
  double area() => 9999.00;
  double perimetro() => 9999.00;
  int numLados() => 9999;
}
