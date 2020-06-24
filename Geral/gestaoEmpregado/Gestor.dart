import 'Empregado.dart';

class Gestor extends Empregado{ 
    
    double _adicional;

  get Adicional => _adicional;

  set Adicional (double adicional) => _adicional = adicional == null ? 0.0 : adicional;    

  Gestor(String nome, int codigo, int diaTrab, double vencimento, double adicional) : super(nome, codigo, diaTrab, vencimento){
    Adicional = adicional;
  }

  @override
  double Calculo_Vencimento({double adicional, double valorKm, double valor_Vendas}) {
    
    double calculoDiferenca = ((Vencimento * adicional) + Vencimento);
    
    return  calculoDiferenca;
  }

  @override
  String toString() {
    
    return super.toString() + "Vencimento: ${(Calculo_Vencimento(adicional: Adicional).toStringAsFixed(2))}";
  }



}