import 'Eletrodomestico.dart';

class Televisao extends Eletrodomestico{
  
// atributos

  int _resolucao;
  bool _tdt;


// getters and setters

get Resolucao => _resolucao;
get TDT => _tdt;

set Resolucao (int resolucao) => _resolucao = resolucao ?? 20;
set TDT (bool tdt) => _tdt = tdt ?? false;


// construtor

 Televisao ({double precoBase, String cor, String consumo, double peso, int resolucao,bool tdt}) : super (precoBase: precoBase, cor: cor, consumo: consumo, peso: peso){
    Resolucao = resolucao;
    TDT = tdt;

  }
 
 Televisao_copia ({Televisao copia}){
    PrecoBase = copia.PrecoBase;
    Cor = copia.Cor;
    Consumo = copia.Consumo;
    Peso = copia.Peso;
    Resolucao = copia.Resolucao;
    TDT = copia.TDT;

  }

 @override 
  double precoFinal(){
    double precoTv = 0.0;
    precoTv += super.precoFinal();

    if (Resolucao > 40){
      precoTv += PrecoBase * 0.30;
      
    }
    if (TDT == true){
      precoTv += 50.00;
      
    }
    return precoTv;
  }

// métodos

Televisao clone() => new Televisao (precoBase: PrecoBase, cor: Cor, consumo: Consumo, peso: Peso, resolucao: Resolucao, tdt: TDT);

 @override
  String toString() {
      return "Televisão => Polegadas: $Resolucao, TDT: ${TDT == true ? "SIM" : "NÃO"}, " + super.toString();
  }

}
 












