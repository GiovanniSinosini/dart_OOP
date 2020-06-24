class Jogador{

String _nome;
int _numCamisola;
DateTime _dataNasc;
int _golosMarcados;
int _age;

// Construtor

Jogador ({String nome, int numCamisola, DateTime dataNasc }){

  this._nome = nome;
  this._numCamisola = numCamisola;
  this._dataNasc = dataNasc;
  _golosMarcados = 0;
  _age = Idade(dataNasc);
}

// Getters and Setters

get Nome => _nome;
get NumCamisola => _numCamisola;
get DataNasc => _dataNasc;
get GolosMarcados => _golosMarcados;
get Age => _age;

set Nome (String nome) => _nome = nome.trim().length <= 20 ? nome.trim() : nome.trim().substring(0,20);
set NumCamisola (int numCamisola) => _numCamisola = numCamisola >= 1 && numCamisola <= 23 ? numCamisola : 0;
set GolosMarcados (int golosMarcados) => _golosMarcados = golosMarcados >= 0 ? golosMarcados : 0;

// Methods

// Calcular Idade
int Idade(DateTime dataNasc){
  DateTime dataAtual = DateTime.now();

  int idade = dataAtual.year - dataNasc.year; 
  
  if (dataNasc.month > dataAtual.month){
    idade--;
  } else if (dataNasc.month == dataAtual.month){
      if (dataNasc.day > dataAtual.day){
        idade--;
      }       
  }
  return idade;
}

// Registar golos

void marcouGolos(int golos){
  if (golos < 0){

  } else{
    GolosMarcados+= golos;
  }

}
// Comparador de jogadores

bool comparaJogador(Jogador jogador) => jogador.GolosMarcados < this.GolosMarcados ? true : false;


@override
String toString() {

String result = "Nome: $_nome";

if (NumCamisola != 0){
  result += " , Número Camisola: $_numCamisola";
} 
result += " , Idade: $_age";

return result;

  } 
}