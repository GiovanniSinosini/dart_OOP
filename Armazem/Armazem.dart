

import 'Bebiba.dart';

class Armazem{


  //atributos

  Map<String, Bebiba> _armaz;
  int _capacidade;
 



// get and set

  get Armaz{
    Map<String, Bebiba> copia = new Map<String, Bebiba>();

    copia.addAll(_armaz);
    return copia;

  }

set Armaz(Map<String, Bebiba> newBebida){

  if (_armaz == null){
    _armaz = new Map<String, Bebiba>();
    _armaz.addAll(newBebida);
  } else{
    _armaz.addAll(newBebida);
  }
}

int get Capacidade => _capacidade;

 set Capacidade(int value) => _capacidade = value ?? 100;


// constructor

Armazem ({ Map<String, Bebiba> armazem, int capacidade}){

  _armaz =  new Map<String, Bebiba>();  
  Capacidade = capacidade;


}


//methods

double precoTotalBebida(){

  double totalPreco = 0.0 ;

  for (var bebida in _armaz.values) {
    totalPreco += bebida.Preco * bebida.Quantidade;
    
  }
  return totalPreco;
}


double precoTotalPorMarca(String marca){
  double totalPreco = 0.0;

  for (var bebida in _armaz.values) {
    if (bebida.Marca == marca){
      totalPreco += bebida.Preco * bebida.Quantidade;
    }
  }
  return totalPreco;
}


double precoTotalPorPrateleira(String prateleira, Bebiba bebida){
  double totalPreco = 0.0;

    if (_armaz[prateleira] != null){
      totalPreco += bebida.Preco * bebida.Quantidade;  
    }
  
  return totalPreco;
}

void eliminarBebida (String pratileira, Bebiba bebidaRemov){
  
  _armaz.remove(pratileira);
  Capacidade++;
}


String adicionarBebida(Bebiba newBebida, String prateleira){
    String res; 
    
  if (Capacidade <= 100){
        
      _armaz[prateleira] = newBebida;
      Capacidade--;
      res = "Produto inserido com sucesso";
  } else{
    res = "Armazém cheio, impossível adicionar.";
  }
return res;
}

int tamanho() => _armaz.length;


String mostrarInformacao(){
  

  for (var bebida in _armaz.values) {
    print(bebida.toString());
  }
   
 }
}