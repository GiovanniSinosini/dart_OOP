
import 'Eletrodomestico.dart';

class MaquinaLavarRoupa extends Eletrodomestico{
  
  //atributo
  
  double _carga;


  // getters and setters

  get Carga => _carga;

  set Carga (double carga) => _carga = carga ?? 5.0;

  // Construtor

  MaquinaLavarRoupa ({double precoBase, String cor, String consumo, double peso, double carga}) : super (precoBase: precoBase, cor: cor, consumo:consumo, peso: peso){
    Carga = carga;

  }

 MaquinaLavarRoupa_copia ({MaquinaLavarRoupa copia}){
    PrecoBase = copia.PrecoBase;
    Cor = copia.Cor;
    Consumo = copia.Consumo;
    Peso = copia.Peso;
    Carga = copia.Carga;

  }


  // Método

  @override 
  double precoFinal(){
    double maqPreco = 0.0;
    maqPreco += super.precoFinal();
    
    if (Carga >= 30){
      maqPreco += 50.00;
    }
    return maqPreco;
  }

MaquinaLavarRoupa clone() => new MaquinaLavarRoupa (precoBase: PrecoBase, cor: Cor, consumo: Consumo, peso: Peso, carga: Carga);

 @override
  String toString() {
      return "Máquina de lavar roupa => Carga: $Carga, "  + super.toString();
  }

}