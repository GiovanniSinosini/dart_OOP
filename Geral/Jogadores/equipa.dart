
import 'jogador.dart';


class Equipa{
  String _pais;
  String _treinador;
  List<Jogador> jogadores = new List();

// Constructor

Equipa ({String pais, String treinador, List<Jogador> jogadores}){

  this.Pais = pais;
  this.Treinador = treinador;
    
}

// Getters and Setters

get Pais => _pais;
get Treinador => _treinador;

set Pais (String pais) => _pais = pais.trim().length <= 20 ? pais : pais.trim().substring(0, 20); 
set Treinador (String nomeTrei) => _treinador = nomeTrei.trim().length <= 20 ? nomeTrei : nomeTrei.trim().substring(0,20);


// Tostring

@override
String toString() => "País: $_pais, Treinador: $_treinador";


// Methods


double mediaIdades(List<Jogador> jogador){
  if (jogador.length <= 0) return 0;

  int totIdades = 0;

  for (var item in jogador) {
    totIdades += item.Age;
  }
  return totIdades / jogador.length;
}

void imprimirListaJogadores(List<Jogador> jogador){
  for (var item in jogador) {
    print(item);
  }
}

// verifica se tem camisolas com número repetidos
bool verifica(List<Jogador> jogador){
  
  for (var i = 1; i < jogador.length ; i++) {
      for (var j = i; j < jogador.length; j++) {
        if (jogador[i-1].NumCamisola == jogador[j].NumCamisola)
          return false;
      }      
    } 
    return true;
  }
}
