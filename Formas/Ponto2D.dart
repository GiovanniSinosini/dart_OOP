import 'dart:math';

class Ponto2D {
  // atributos
  double _x;
  double _y;

  // getters and setters
  get X => _x;
  get Y => _y;
  set X(double valor) => _x = valor ?? 0;
  set Y(double valor) => _y = valor ?? 0;

  // Construtor(es)
  Ponto2D({double x, double y}) {
    X = x;
    Y = y;
  }

  Ponto2D.createObject(Ponto2D p) {
    X = p.X;
    Y = p.Y;
  }

  // membros de instancia
  // c)
  void incCoord(double dx, double dy) {
    X += dx;
    Y += dy;
  }

  void decCoord(double dx, double dy) {
    X -= dx;
    Y -= dy;
  }

  void somaPonto(Ponto2D p) {
    X += p.X;
    Y += p.Y;
  }

  Ponto2D somaCoordPonto(double dx, double dy) {
    return Ponto2D(x: X += dx, y: Y += dy);
  }

  bool eSimetrico() => X == Y;
  bool coordPos() => X > 0 && Y > 0;
  bool igual(Ponto2D p) => X == p.X && Y == p.Y;

  @override
  String toString() => "Ponto2D [X = $X, Y = $Y]";
  Ponto2D clone() => Ponto2D(x: X, y: Y);
}
