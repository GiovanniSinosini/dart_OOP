import 'Empregado.dart';


class Normal extends Empregado{

  Normal(String nome, int codigo, int diasTrab, double vencimento ) : super(nome, codigo, diasTrab, vencimento);

  @override
  double Calculo_Vencimento({double adicional, double valorKm, double valor_Vendas}) {
    
    return Vencimento;
  }
  @override
  String toString() =>  "Codigo: $Codigo, nome: $Nome, Dias trabalhado: $DiasTrab, Vencimento: ${Vencimento.toStringAsFixed(2)} ";


}