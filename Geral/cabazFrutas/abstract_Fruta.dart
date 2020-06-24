abstract class Fruta{
// atributos
String _nome;
double _preco;

CabazDeFruta cabaz1 = new CabazDeFruta();


// getters and setters

get Nome => _nome;
get Preco => _preco;


set Nome (String nome) => _nome = nome ?? " null ";
set Preco (double preco) => _preco = preco ?? 0.0;

// construtor

Fruta (String nome, double preco){
Nome = nome;
Preco = preco;
}

// métodos

double aPagar();


@override 
String toString() {
  return "Nome: $Nome, Preço: $Preco EUR, " ;
  }


}

class FrutaUnidade extends Fruta{
  int _unidade;
  
  


  //getters and setters

  get Unidade => _unidade;

  set Unidade (int unidade)=> _unidade = unidade ?? 0.0;

  // Construtor

  FrutaUnidade(String nome, double preco, int unidade) : super (nome, preco){
    Unidade = unidade;


  }
 
  // Métodos

  @override
  double aPagar() {
    return Unidade * Preco;
  
 }

  @override 
  String toString() {
    
    return super.toString() + " Unidades: $Unidade, Preço parcial: ${aPagar().toStringAsFixed(2)} EUR";
  }
}


class FrutaPeso extends Fruta{
  double _peso;


  //getters and setters

  get Peso => _peso;

  set Peso (double peso)=> _peso = peso;

  // Construtor

  FrutaPeso(String nome, double preco, double peso) : super (nome, preco){
    Peso = peso;
    
  }
 
  // Métodos

  @override
  double aPagar() {
    return Peso * Preco;
    
  }

  @override 
  String toString() {
    
    return super.toString() + "Peso: $Peso, Preço: ${aPagar().toStringAsFixed(2)} EUR";
  }
}



class FrutaVolume extends Fruta{
  double _volume;
  

  //getters and setters

  get Volume => _volume;

  set Volume (double volume)=> _volume = volume;

  // Construtor

  FrutaVolume(String nome, double preco, double volume) : super (nome, preco){
    Volume = volume;
    
  }
 
  // Métodos

  @override
  double aPagar() {
    return Volume * Preco;
    
  }

  @override 
  String toString() {
    
    return super.toString() + "Volume: $Volume, Preço: ${aPagar().toStringAsFixed(2)} EUR";
  }
}



class CabazDeFruta{
  List<Fruta> _frutas = new List();


  // getter and setters

  get Frutas => _frutas;

  set Frutas (List<Fruta> fruta) => _frutas = fruta;

  // métodos


  void Add_Lista_Compra(Fruta fruta){
    _frutas.add(fruta);

  }

  double Valor_ToTal_Compra(){
   double total = 0;

   for (var i = 0; i < _frutas.length; i++) {
   total += _frutas[i].aPagar();
     
   }
   return double.parse(total.toStringAsFixed(2));
  }
  
  void Lista_Comprados(){
    _frutas.sort((a, b) => a.Nome.compareTo(b.Nome));   // função para ordenar a lista
    for (var item in Frutas) {                           // for para imprimir lista
      print(item);
    }
           
  }
      
}



  


