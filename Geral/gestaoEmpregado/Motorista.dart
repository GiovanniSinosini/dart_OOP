import 'Empregado.dart';


class Motorista extends Empregado{

  double _kmPercorrido;
  double _valorKm;

  //getters and setters
  
  get KmPercorrido => _kmPercorrido;
  get ValorKm => _valorKm;

  set KmPercorrido(double kmPercorrido) => _kmPercorrido = kmPercorrido ?? 0.0;
  set ValorKm (double valorKm) => _valorKm = valorKm;

  Motorista(String nome, int codigo,  int diasTrab, double vencimento, double kmPercorrido, double valorKm) : super(nome, codigo, diasTrab, vencimento){
  KmPercorrido = kmPercorrido;
  ValorKm = valorKm;

  }

  // métodos

  @override
  double Calculo_Vencimento({double adicional, double valorKm, double valor_Vendas}) {
    double adicional = valorKm * KmPercorrido;
    double total = Vencimento + adicional;
  return total;
  }
  @override
  String toString() {
    
  return super.toString() + "Vencimento: ${Calculo_Vencimento(valorKm: ValorKm).toStringAsFixed(2)}";
  }
  
  
}