import './Ponto2D.dart';
import 'dart:math';

class Segmento {
  // atributos
  Ponto2D _pi;
  Ponto2D _pf;

  // getters and setters
  get Pi => _pi;
  get Pf => _pf;
  set Pi(Ponto2D valor) {
    _pi = valor ?? Ponto2D();
  }

  set Pf(Ponto2D valor) {
    _pf = valor ?? Ponto2D();
  }

  // Construtor(es)
  Segmento({Ponto2D pi, Ponto2D pf}) {
    Pi = pi;
    Pf = pf;
  }

  Segmento.createObject(Segmento s) {
    Pi = s.Pi;
    Pf = s.Pf;
  }

  // membros de instancia
  double comprimento() => sqrt(pow(Pi.X - Pf.X, 2) + pow(Pi.Y - Pf.Y, 2));
  double declive() => (Pf.Y - Pi.Y) / (Pf.X - Pi.X);

  String daDeclive() {
    String result = "";
    if (declive() > 0) {
      result = "Segmento a subir";
    } else if (declive() < 0) {
      result = "Segmento a descer";
    } else {
      result = "Segmento horizontal";
    }
    return result;
  }

  void deslocaSegmento(double dx, double dy) {
    // desloca inicio
    _pi.incCoord(dx, dy);
    // desloca fim
    _pf.incCoord(dx, dy);
  }

  bool iguais(Segmento s) => _pi.igual(s.Pi) && _pf.igual(s.Pf);

  @override
  String toString() {
    return "Segmento [P1 = $Pi, P2 = $Pf]";
  }
}
