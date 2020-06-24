

class Eletrodomestico{
  
  //atributos
  
  double _precoBase;
  String _cor;
  String _consumo;
  double _peso;


  //getters and setters

  get PrecoBase => _precoBase;
  get Cor => _cor;
  get Consumo => _consumo;
  get Peso => _peso;

  set PrecoBase (double precoBase) => _precoBase = precoBase ?? 100.00;
  set Cor (String cor) => _cor = cor ?? "branco";
  set Consumo (String consumo) => _consumo = consumo ?? "F";
  set Peso (double peso) => _peso = peso ?? 5.0;


  // construtor

  Eletrodomestico ({double precoBase, String cor, String consumo, double peso}){
    
    PrecoBase = precoBase;
    Cor = cor;
    Consumo = consumo;
    Peso = peso;

  }
  Eletrodomestico_copia ({Eletrodomestico copia}){
    PrecoBase = copia.PrecoBase;
    Cor = copia.Cor;
    Consumo = copia.Consumo;
    Peso = copia.Peso;
    comprovarConsumoEnergetico();
    comprovarCor();

  }


  // métodos

  void comprovarConsumoEnergetico(){
    if (Consumo == "A" || Consumo == "B" || Consumo == "C" || Consumo == "D" || Consumo == "E" || Consumo == "F"){
      
    } else{
      Consumo = "F";
    } 
  }

  void comprovarCor(){
     if (Cor == "branco" || Cor == "preto" || Cor == "vermelho" || Cor == "azul" || Cor == "cinzento"){
      
    } else{
      Cor = "branco";
    } 
  }

  double precoFinal() {
    double precoCons = 0.0;
    double precoPes = 0.0;

    if (Consumo == "A"){
      precoCons = 100.00;
    } else if (Consumo == "B"){
      precoCons = 80.00;
    } else if (Consumo == "C"){
      precoCons = 60.00;
    } else if (Consumo == "D"){
      precoCons = 50.00;
    } else if (Consumo == "E"){
      precoCons = 30.00;
    } else if (Consumo == "F"){
      precoCons = 10.00;
    }

    if (Peso <= 19){
      precoPes = 10.00;
    } else if (Peso >= 20 && Peso <=49){
      precoPes = 50.00;
    } else if (Peso >= 50 && Peso <= 79){
      precoPes = 80.00;
    } else if(Peso >= 80.00){
      precoPes = 100.00;
    }

    return precoCons + precoPes + PrecoBase; 
  }

  Eletrodomestico clone() => new Eletrodomestico (precoBase: PrecoBase, cor: Cor, consumo: Consumo, peso: Peso);

  @override
  String toString() {
      return "Eletrodomestico => Preco Base: $PrecoBase, Cor: $Cor, Consumo: $Consumo, Peso: $Peso";
  }


}