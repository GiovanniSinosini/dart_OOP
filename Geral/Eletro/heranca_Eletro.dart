

class Eletrodomestico{
  String _marca;
  double _potencia;
  String _estado;
 

  // construtor

  Eletrodomestico(String nome, double potencia, String estado){
    this._marca = nome;
    this._potencia = potencia;
    this._estado = estado;
       

  }

  // getters and setters 

  get Marca => _marca;
  get Potencia => _potencia;
  get Estado => _estado;
  

  set Marca (String nome) => _marca;
  set Potencia (double potencia) => _potencia;
  set Estado (String estado) => _estado;
  

  // métodos

  double Consumo(double potencia, double tempo) => Estado.toString().trim().toLowerCase() == "desligado" ? 0 : ((potencia/1000)*tempo).roundToDouble();
  
  @override
  String toString() {
    
    return "Marca: $Marca, Potencia: $Potencia, Estado: $Estado";
  }

}


class TV extends Eletrodomestico{

  int _canal;
  int _volume;
  int _ecra;

// getters and setters

get Canal => _canal;
get Volume => _volume;
get Ecra => _ecra;

set Canal (int canal) => _canal = canal;
set Volume (int volume) => _volume = volume;
set Ecra (int ecra) => _ecra = ecra;

// construtor

TV(String marca, double potencia, String estado, int canal, int volume, int ecra) : super(marca, potencia, estado){

Canal = canal;
Volume = volume;
Ecra = ecra;

}

@override
  String toString() {
    
    return super.toString() + ", canal: $Canal, volume: $Volume, ecra: $Ecra";
  }

}

class MicroOndas extends Eletrodomestico {
  double _tempo;


// getters and setters

get Tempo => _tempo;

@override
set Potencia(double potencia) => Estado.toString().trim().toLowerCase() == "desligado" ? 0 : 300; 

set Tempo (double tempo) => Estado.toString().trim().toLowerCase() == "ligado" ? tempo : 0;


// construtor

MicroOndas(String marca, double potencia, String estado, double tempo) : super (marca, potencia, estado){

this._potencia = potencia;
this._tempo = tempo;

  }

//Método


@override
  String toString() {
    
    return super.toString() + ", tempo ligado total: $Tempo";
  }

}


class Torradeira extends Eletrodomestico {
  double _tempo;

// getters and setters

get Tempo => _tempo;

@override
set Potencia(double potencia) => Estado.toString().trim().toLowerCase() == "desligado" ? 0 : 300; 

set Tempo (double tempo) => Estado.toString().trim().toLowerCase() == "ligado" ? tempo : 0;


// construtor

Torradeira(String marca, double potencia, String estado, double tempo) : super (marca, potencia, estado){

this._potencia = potencia;
this._tempo = tempo;

 }

//Método

@override
  String toString() {
    
    return super.toString() + ", tempo ligado total: $Tempo";
  }

}


