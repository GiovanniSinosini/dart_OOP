import 'Empregado.dart';

class Comercial extends Empregado{

  double _valor_Vendas;
  double _comissao;

  //getters and setters
  
  get Valor_Vendas => _valor_Vendas;
  get Comissao => _comissao;

  set Valor_Vendas(double valor_Vendas) => _valor_Vendas = valor_Vendas ?? 0.0;
  set Comissao (double comissao) => _comissao = comissao ?? 0.0;

  // Construtor

  Comercial(String nome, int codigo,  int diasTrab, double vencimento, double valor_Vendas, double comissao) : super(nome, codigo, diasTrab, vencimento){
    Valor_Vendas = valor_Vendas;
    Comissao = comissao;
  }

  // métodos


  @override
  double Calculo_Vencimento({double adicional, double valorKm, double valor_Vendas}) {
    double total = (Valor_Vendas * Comissao) + Vencimento;
    return total;
  }

  @override
  String toString() {
    
    return super.toString() + "Vencimento: ${Calculo_Vencimento(valor_Vendas: Valor_Vendas).toStringAsFixed(2)}";
  }
}